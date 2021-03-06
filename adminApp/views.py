from django.shortcuts import render, redirect
from django.http import HttpResponse, response
from django.db.models.functions import Lower
from django.db.models import Count, Sum, Avg
from django.conf import settings
from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from django.db.models import Q
from django.contrib.auth.models import Group
from datetime import date
from django.utils import timezone

from .utils import send_html_mail
from accounts.decorators import unauthenticated_user, allowed_users
from accounts.models import accounts
from clientApp.models import article, personalDetails, employmentHistory, education, skill, link, reference, jobapplication
from .forms import *

from system.models import jobList, manpower, contact
from system.forms import manpowerForm

import random
import csv
# Create your views here.


def exportStaffs(request):
    response = HttpResponse(content_type='text/csv')
    writer = csv.writer(response)
    writer.writerow(['id', 'Email', 'Position', 'First Name', 'Last Name',
                    'Address', 'Contact', 'Date Joined', 'Last Login'])
    for users in accounts.objects.filter(groups__name__in=['HR Staff', 'HR Manager']).order_by('-id').values_list('id', 'email', 'groups',
                                                                                                                  'first_name', 'last_name', 'address',
                                                                                                                  'phone', 'date_joined', 'last_login'):
        users = list(users)
        convertGroupId = Group.objects.filter(id=users[2])[0]
        users[2] = convertGroupId
        writer.writerow(users)
    response['Content-Disposition'] = 'attachment; filename ="AdminAccounts.csv"'
    return response


def exportRequest(request):
    response = HttpResponse(content_type='text/csv')
    writer = csv.writer(response)
    writer.writerow(['id', 'Requester Name', 'Department', 'Request Date',
                    'Reason', '# Of Candidate', 'Current Candidate', 'Fullfilled', 'Requirements', 'Last Submitted'])
    for users in manpower.objects.all().order_by('-id').values_list('id', 'name', 'department',
                                                                    'requestDate', 'reason',
                                                                    'nosCandidate', 'currentCandidate', 'is_Finished',
                                                                    'requirements', 'lastSubmitted',

                                                                    ):
        users = list(users)
        writer.writerow(users)
    response['Content-Disposition'] = 'attachment; filename ="Department Requests.csv"'
    return response


def exportClient(request, pk=None):
    response = HttpResponse(content_type='text/csv')
    writer = csv.writer(response)
    writer.writerow(['id', 'Email', 'Position', 'First Name', 'Last Name',
                    'Address', 'Contact', 'City', 'Postal Code', 'Birth Place', 'Birth Date', 'Nationality',
                     'Copy Writer RScore', 'Editor RScore', 'Translator RScore', 'Article Score',
                     'Copy Writer FScore', 'Editor FScore', 'Translator FScore',
                     'Date Submitted', 'Date Accepted'])

    filterUser = accounts.objects.filter(
        groups__name='Clients').order_by('-id')
    tempList = []
    filename = 'client'
    for users in filterUser:
        job = jobapplication.objects.get(accounts=users)

        if pk == 1:
            if job.jobAccepted == 'None' and job.copywriterfinal < 80 and job.editorfinal < 80 and job.translatorfinal < 80:
                per = personalDetails.objects.get(accounts=users)
                tempList.append([users.id, users.email, job.jobAccepted, users.first_name, users.last_name,
                                per.address, per.phone, per.city, per.postalcode,
                                per.birthplace, per.birthdate, per.nationality,
                                job.copywriter, job.editor, job.translator, job.article,
                                job.copywriterfinal, job.editorfinal, job.translatorfinal,
                                job.dateSubmit, job.dateAccepted
                                 ])
                filename = 'rejectedApplicant'

        if pk == 2:
            if job.jobAccepted != 'None':
                per = personalDetails.objects.get(accounts=users)
                tempList.append([users.id, users.email, job.jobAccepted, users.first_name, users.last_name,
                                per.address, per.phone, per.city, per.postalcode,
                                per.birthplace, per.birthdate, per.nationality,
                                job.copywriter, job.editor, job.translator, job.article,
                                job.copywriterfinal, job.editorfinal, job.translatorfinal,
                                job.dateSubmit, job.dateAccepted
                                 ])
                filename = 'DeployedApplicant'

        if pk == 3:
            per = personalDetails.objects.get(accounts=users)
            tempList.append([users.id, users.email, job.jobAccepted, users.first_name, users.last_name,
                            per.address, per.phone, per.city, per.postalcode,
                            per.birthplace, per.birthdate, per.nationality,
                            job.copywriter, job.editor, job.translator, job.article,
                            job.copywriterfinal, job.editorfinal, job.translatorfinal,
                            job.dateSubmit, job.dateAccepted
                             ])
            filename = 'Applicants'

    for ls in tempList:
        writer.writerow(ls)

    response['Content-Disposition'] = 'attachment; filename ="'+filename+'.csv"'
    return response


def exportMessages(request):
    response = HttpResponse(content_type='text/csv')
    writer = csv.writer(response)
    writer.writerow(['id', 'Name', 'email', 'Subject', 'Message'])
    for msgs in contact.objects.all().order_by('-id').values_list('id', 'name', 'email',
                                                                  'subject', 'message'
                                                                  ):
        msgs = list(msgs)
        writer.writerow(msgs)
    response['Content-Disposition'] = 'attachment; filename ="Writeam Messages.csv"'
    return response


def getLatestRecord():
    data = manpower.objects.order_by('-lastSubmitted')[:10]
    # print(data)
    return data


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def dashboard(request):
    getLatestRecord()
    users = accounts.objects.all().order_by('id')
    manpowers = manpower.objects.order_by('-requestDate')
    jobapps = jobapplication.objects.all()

    # ? get counts ===
    countTodaySubmmission = jobapps.filter(
        dateSubmit__date=timezone.now()).count()

    countTodayUser = users.filter(last_login__date=timezone.now()).count

    countTodayApplicants = users.filter(date_joined__date=timezone.now()).filter(
        groups__name='Clients').count

    countAllApplicants = users.filter(groups__name='Clients').count

    countAllCopywriter = jobapps.filter(is_copywriter=True).count
    countAllEditor = jobapps.filter(is_editor=True).count
    countAllTranslator = jobapps.filter(is_translator=True).count

    todays_date = timezone.now()
    countsAllApplicant = []
    for x in range(1, 13):
        countsAllApplicant.append(jobapplication.objects.filter(dateSubmit__year=todays_date.year,
                                                                dateSubmit__month='0'+str(x)).count())

    # ? end get counts ===

    context = {'manpowersList': manpowers,  'applicantList': users,
               'countTodaySubmmission': countTodaySubmmission, 'countTodayUser': countTodayUser,
               'countTodayApplicants': countTodayApplicants, 'countAllApplicants': countAllApplicants,
               'countAllCopywriter': countAllCopywriter, 'countAllEditor': countAllEditor,
               'countAllTranslator': countAllTranslator, 'countsAllApplicant': countsAllApplicant,
               'userList': users, 'notifs': getLatestRecord()}
    return render(request, 'main/Admin/dashboard.html', context)


@ allowed_users(allowed_roles=['HR Manager'])
def adminUsers(request):
    users = accounts.objects.all().order_by('id')
    context = {'userList': users, 'notifs': getLatestRecord()}
    return render(request, 'main/Admin/user.html', context)


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def applicantManagement(request, pk=None):

    users = accounts.objects.all()
    userList = accounts.objects.filter(
        groups__name='Clients').order_by('-id')[:5]

    # ?/end/
    if request.method == 'POST':

        instance = accounts.objects.get(id=pk)
        user = jobapplication.objects.get(accounts=instance)
        if user.submitApplication is True:
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

                modalform.is_validated = True
                modalform.validationDate = timezone.now()

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
        context = {'applicantList': users,
                   'randomApplicants': userList, 'notifs': getLatestRecord()}
        return render(request, 'main/Admin/applicantstatus.html', context)
    else:

        instance = accounts.objects.get(id=pk)
        jobappInstance = jobapplication.objects.get(accounts=instance)
        modalform = applicantScoreForm(instance=jobappInstance)

        context = {'applicantList': users,
                   'randomApplicants': userList,
                   'instance': instance, 'jobappInstance': jobappInstance,
                   'modalform': modalform, 'notifs': getLatestRecord()}
        return render(request, 'main/Admin/applicantstatus.html', context)


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
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

    # ? Copy writer
    countwriter = jobapps.filter(
        is_validated=True).filter(jobAccepted='Copy Writer').count()
    # ? Get count accepted today
    countwritertoday = jobOnboarding.filter(jobAccepted='Copy Writer').filter(
        dateAccepted__date=timezone.now()).count()
    avgScoreWriter = jobapps.filter(
        jobAccepted='Copy Writer').aggregate(Avg('copywriterfinal'))

    # ? Editor
    counteditor = jobapps.filter(
        is_validated=True).filter(jobAccepted='Editor').count()
    # ? Get count accepted today
    counteditortoday = jobOnboarding.filter(jobAccepted='Editor').filter(
        dateAccepted__date=timezone.now()).count()
    avgScoreEditor = jobapps.filter(
        jobAccepted='Editor').aggregate(Avg('editorfinal'))

    # ? Copy Writer
    counttranslator = jobapps.filter(
        is_validated=True).filter(jobAccepted='Translator').count()
    # ? Get count accepted today
    counttranslatortoday = jobOnboarding.filter(jobAccepted='Translator').filter(
        dateAccepted__date=timezone.now()).count()
    avgScoreTrans = jobapps.filter(
        jobAccepted='Translator').aggregate(Avg('translatorfinal'))

    # ? Area chart
    todays_date = timezone.now()
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

    # if pk is None:
    context = {'applicantList': users, 'countclient': countOnboarding,
               'countWriter': countwriter, 'countEditor': counteditor, 'countTrans': counttranslator,
               'countwritertoday': countwritertoday, 'counteditortoday': counteditortoday, 'counttranslatortoday': counttranslatortoday,
               'avgScoreWriter': avgScoreWriter, 'avgScoreEditor': avgScoreEditor, 'avgScoreTrans': avgScoreTrans,
               'cities': cities,
               'countsEditorMonth': countsEditorMonth, 'countsCopywriterMonth': countsCopywriterMonth, 'countsTranslatorMonth': countsTranslatorMonth,
               'notifs': getLatestRecord()
               }
    if not pk is None:

        user = accounts.objects.get(id=pk)
        jobapps = jobapplication.objects.get(accounts=user)
        print(jobapps)
        context.update({'userdetail': user})
    return render(request, 'main/Admin/onboarding.html', context)


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def rejectedapp(request):
    users = accounts.objects.all()
    context = {'applicantList': users, 'notifs': getLatestRecord()}
    return render(request, 'main/Admin/rejectedapp.html', context)


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def messagespage(request, pk=None):
    msgs = contact.objects.all()
    context = {'msgs': msgs, 'notifs': getLatestRecord()}

    if pk != None:
        instance = contact.objects.get(id=pk)
        context = {'msgs': msgs, 'notifs': getLatestRecord(),
                   'instance': instance}
    return render(request, 'main/Admin/messages.html', context)


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def department(request, type=None, pk=None):
    manpowers = manpower.objects.order_by('-requestDate')

    currentUser = accounts.objects.get(username=request.user)  # get Some User.
    group = currentUser.groups.all()[0]

    context = {'group': group, 'manpowersList': manpowers,
               'notifs': getLatestRecord()
               }

    if pk != None:
        instance = manpower.objects.get(id=pk)
        if type == None:
            form1 = manpowerForm(instance=instance)

            if request.method == 'POST':
                form1 = manpowerForm(request.POST, instance=instance)
                if form1.is_valid():
                    form1.save()
                    return redirect('department')

            context.update(
                {'instance': instance, 'form': form1, })
        if type == "activate":
            if pk != None:

                current_site = get_current_site(request)

                template = render_to_string(
                    'main/Emails/manpowerActivate.html', {'name':  instance.name, 'domain': current_site})

                send_html_mail('WriTeam: The are changes your application progress', template, [
                    instance.email], settings.EMAIL_HOST_USER)
                req = manpower.objects.get(id=pk)
                req.on_Going = True
                req.save()
                postjob = jobList.objects.get(id=req.job_Title.id)
                if not postjob.is_onHire:
                    context.update({'postinstance': postjob})
    return render(request, 'main/Admin/department.html', context)


def departmentActivate(request, pk=None):
    if pk != None:
        req = manpower.objects.get(id=pk)
        req.on_Going = True
        req.save()
    return redirect('department')


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
               'notifs': getLatestRecord()
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
def staffActivate(request, pk=None):
    if pk != None:
        user = accounts.objects.get(id=pk)
        user.is_active = True
        user.save()
    return redirect('adminUsers')


@ allowed_users(allowed_roles=['HR Manager'])
def staffDeactivate(request, pk):
    if pk != None:
        user = accounts.objects.get(id=pk)
        if user.id != request.user.id:
            user.is_active = False
            user.save()
    return redirect('adminUsers')
