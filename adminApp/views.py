from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.db.models.functions import Lower
from django.db.models import Count, Sum, Avg
from django.conf import settings
from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from django.db.models import Q
from django.contrib.auth.models import Group
from datetime import date

from .utils import send_html_mail
from accounts.decorators import unauthenticated_user, allowed_users
from accounts.models import accounts
from clientApp.models import personalDetails, employmentHistory, education, skill, link, reference, jobapplication
from .models import onboardingApplicant
from .forms import *
import random
# Create your views here.


@allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def dashboard(request):

    users = accounts.objects.all()
    context = {'applicantList': users}
    return render(request, 'main/Admin/Dashboard.html', context)


@allowed_users(allowed_roles=['HR Manager'])
def adminUsers(request):
    users = accounts.objects.all()
    context = {'userList': users}
    return render(request, 'main/Admin/user.html', context)


@allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def applicantManagement(request, pk=None):

    users = accounts.objects.all()
    userList = accounts.objects.filter(
        groups__name='Clients').order_by('-id')[:10]

    # ?/end/
    if request.method == 'POST':

        instance = accounts.objects.get(id=pk)
        user = jobapplication.objects.get(accounts=instance)
        modalform = applicantScoreForm(request.POST, instance=user)
        # print(modalform)
        if modalform.is_valid():
            score4 = modalform.cleaned_data['article']
            tempscore = int(score4)/10*3
            score1 = int(user.copywriter) + tempscore
            score2 = int(user.editor) + tempscore
            score3 = int(user.translator) + tempscore
            modalform = modalform.save(commit=False)
            modalform.copywriterfinal = score1
            modalform.editorfinal = score2
            modalform.translatorfinal = score3
            if score1 > 80 or score2 > 80 or score3 > 80:
                if score1 > score2 and score1 > score3:
                    modalform.is_copywriter_hired = True
                    modalform.progress = "Congratulations " + \
                        instance.personaldetails.fname +\
                        "! You may choose any of following job"
                if score2 > score1 and score2 > score3:
                    modalform.is_editor_hired = True
                    modalform.progress = "Congratulations " + \
                        instance.personaldetails.fname +\
                        "! You may choose any of following job"
                if score3 > score2 and score3 > score1:
                    modalform.is_translator_hired = True
                    modalform.progress = "Congratulations " + \
                        instance.personaldetails.fname +\
                        "! You may choose any of following job"
            else:
                modalform.is_translator_hired = False
                modalform.is_editor_hired = False
                modalform.is_copywriter_hired = False
                modalform.jobAccepted = "None"

                modalform.progress = "There is something WRONG. Please read the remarks"

            modalform.is_validated = True

            current_site = get_current_site(request)
            template = render_to_string(
                'main/Emails/ResumeSuccess.html', {'name':  instance.username, 'domain': current_site})
            send_html_mail('WriTeam: The are changes your application progress', template, [
                           instance.email], settings.EMAIL_HOST_USER)
            modalform.save()
            return redirect('applicantmanagement')
        else:
            print(modalform.errors)

    if pk is None:
        context = {'applicantList': users, 'randomApplicants': userList}
        return render(request, 'main/Admin/applicantstatus.html', context)
    else:

        instance = accounts.objects.get(id=pk)
        jobappInstance = jobapplication.objects.get(accounts=instance)
        modalform = applicantScoreForm(instance=jobappInstance)

        context = {'applicantList': users,
                   'randomApplicants': userList,
                   'instance': instance, 'jobappInstance': jobappInstance,
                   'modalform': modalform}
        return render(request, 'main/Admin/applicantstatus.html', context)

# ! for tommorow
# if some_queryset.filter(pk=entity_id).exists():
    # print("Entry contained in queryset")
    # filter(A).filter(B)


@allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def onboarding(request, pk=None):
    users = accounts.objects.all()
    jobapps = jobapplication.objects.all()
    jobOnboarding = jobapps.filter(~Q(jobAccepted='None'))

    personalDet = personalDetails.objects.all()

    # ? Onboarding
    countOnboarding = jobOnboarding.count()
    getOnboardID = jobOnboarding.values_list(
        'accounts', flat=True)
    cities = personalDet.filter(accounts__id__in=getOnboardID).filter(city__isnull=False).annotate(handle_lower=Lower(
        "city")).values('handle_lower').annotate(the_count=Count('city')).values_list('handle_lower', 'the_count')

    # maxPerCity = 0
    # # ? GET THE MAX VALUE FOR CHARTS
    # for name, value in cities:
    #     maxPerCity += value

    # ? Copy writer
    countwriter = jobapps.filter(
        is_validated=True).filter(jobAccepted='Copy Writer').count()
    # ? Get count accepted today
    countwritertoday = jobOnboarding.filter(jobAccepted='Copy Writer').filter(
        dateAccepted__date=date.today()).count()
    avgScoreWriter = jobapps.filter(
        jobAccepted='Copy Writer').aggregate(Avg('copywriterfinal'))

    # ? Editor
    counteditor = jobapps.filter(
        is_validated=True).filter(jobAccepted='Editor').count()
    # ? Get count accepted today
    counteditortoday = jobOnboarding.filter(jobAccepted='Editor').filter(
        dateAccepted__date=date.today()).count()
    avgScoreEditor = jobapps.filter(
        jobAccepted='Editor').aggregate(Avg('editorfinal'))

    # ? Copy Writer
    counttranslator = jobapps.filter(
        is_validated=True).filter(jobAccepted='Translator').count()
    # ? Get count accepted today
    counttranslatortoday = jobOnboarding.filter(jobAccepted='Translator').filter(
        dateAccepted__date=date.today()).count()
    avgScoreTrans = jobapps.filter(
        jobAccepted='Translator').aggregate(Avg('translatorfinal'))

    # ? Area chart
    todays_date = date.today()
    countsEditorMonth = []
    countsCopywriterMonth = []
    countsTranslatorMonth = []
    for x in range(1, 13):
        countsEditorMonth.append(jobapplication.objects.filter(dateAccepted__year=todays_date.year,
                                                               dateAccepted__month='0'+str(x)).filter(jobAccepted='Editor').count())
        countsCopywriterMonth.append(jobapplication.objects.filter(dateAccepted__year=todays_date.year,
                                                                   dateAccepted__month='0'+str(x)).filter(jobAccepted='Copy Writer').count())
        countsTranslatorMonth.append(jobapplication.objects.filter(dateAccepted__year=todays_date.year,
                                                                   dateAccepted__month='0'+str(x)).filter(jobAccepted='Translator').count())

    if pk is None:
        context = {'applicantList': users, 'countclient': countOnboarding,
                   'countWriter': countwriter, 'countEditor': counteditor, 'countTrans': counttranslator,
                   'countwritertoday': countwritertoday, 'counteditortoday': counteditortoday, 'counttranslatortoday': counttranslatortoday,
                   'avgScoreWriter': avgScoreWriter, 'avgScoreEditor': avgScoreEditor, 'avgScoreTrans': avgScoreTrans,
                   'cities': cities,
                   'countsEditorMonth': countsEditorMonth, 'countsCopywriterMonth': countsCopywriterMonth, 'countsTranslatorMonth': countsTranslatorMonth
                   }
        return render(request, 'main/Admin/onboarding.html', context)


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def rejectedapp(request):
    users = accounts.objects.all()
    context = {'applicantList': users}
    return render(request, 'main/Admin/rejectedapp.html', context)


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def department(request):
    context = {}
    return render(request, 'main/Admin/department.html', context)


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def ResumePreview(request, pk):
    user = accounts.objects.get(id=pk)
    experiencedata = employmentHistory.objects.filter(
        personaldetails_id=user.personaldetails)
    educationdata = education.objects.filter(
        personaldetails_id=user.personaldetails)
    referencedata = reference.objects.filter(
        personaldetails_id=user.personaldetails)
    skilldata = skill.objects.filter(
        personaldetails_id=user.personaldetails)
    linkdata = link.objects.filter(
        personaldetails_id=user.personaldetails)
    context = {'user': user,
               'experience': experiencedata,
               'education': educationdata,
               'reference': referencedata,
               'skill': skilldata,
               'link': linkdata,
               }
    return render(request, 'main/Admin/include/resumePrev.html', context)


@ allowed_users(allowed_roles=['HR Manager'])
def staffPosition(request, pk1=None, pk2=None):
    user = accounts.objects.get(id=pk1)
    group = Group.objects.get(name=pk2)
    if user.id != request.user.id:
        user.groups.clear()
        user.groups.add(group)
    return redirect('adminUsers')


@ allowed_users(allowed_roles=['HR Manager'])
def staffActivate(request, pk):
    user = accounts.objects.get(id=pk)
    user.is_active = True
    user.save()
    return redirect('adminUsers')


@ allowed_users(allowed_roles=['HR Manager'])
def staffDeactivate(request, pk):
    user = accounts.objects.get(id=pk)
    if user.id != request.user.id:
        user.is_active = False
        user.save()
    return redirect('adminUsers')
