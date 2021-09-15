from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.db.models.functions import Lower
from django.db.models import Count, Sum, Avg
from accounts.decorators import unauthenticated_user, allowed_users
from accounts.models import accounts
from clientApp.models import personalDetails, employmentHistory, education, skill, link, reference
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

    # ? generating random number for the userlist
    userList = list(accounts.objects.filter(
        groups__name='Clients'))
    counterList = 10
    if len(userList) < 10:
        counterList = len(userList)
    random_items = random.sample(userList, counterList)
    # ?/end/

    modalform = applicantScoreForm()
    if request.method == 'POST':

        instance = accounts.objects.get(id=pk)
        user = onboardingApplicant.objects.filter(
            accounts=instance).first()
        modalform = applicantScoreForm(request.POST, instance=user)
        # print(modalform)
        if modalform.is_valid():
            score = modalform.cleaned_data['score']
            modalform = modalform.save(commit=False)
            if int(score) > 80:
                modalform.status = 'PASSED'
            else:
                modalform.status = 'FAILED'
            modalform.save()
            return redirect('applicantmanagement')
        else:
            print(modalform.errors)

    if pk is None:
        context = {'applicantList': users, 'randomApplicants': random_items}
        return render(request, 'main/Admin/applicantstatus.html', context)
    else:

        instance = accounts.objects.get(id=pk)
        if onboardingApplicant.objects.filter(accounts=instance).exists():
            user = onboardingApplicant.objects.filter(
                accounts=instance).first()
            print(user)
            modalform = applicantScoreForm(instance=user)
        else:
            modalform = applicantScoreForm(
                initial={'accounts': pk, 'status': 'NONE'})
        context = {'applicantList': users,
                   'randomApplicants': random_items, 'instance': instance, 'modalform': modalform}
        return render(request, 'main/Admin/applicantstatus.html', context)

# ! for tommorow
# if some_queryset.filter(pk=entity_id).exists():
    # print("Entry contained in queryset")
    # filter(A).filter(B)


@allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def onboarding(request, pk=None):

    users = accounts.objects.all()
    clients = accounts.objects.filter(groups__name='Clients')
    # ? Getting all the onboarding applicant
    onboardApplicants = onboardingApplicant.objects.filter(
        accounts__id__in=clients).values_list('accounts', flat=True)
    getIDOnboarding = list(onboardApplicants)

    # ? Get avarage onboarding Applicants
    avgScore = onboardingApplicant.objects.filter(
        accounts__id__in=getIDOnboarding).aggregate(Avg('score'))
    print(getIDOnboarding)

    # ? Get the city data from resume
    cities = personalDetails.objects.filter(
        accounts__id__in=getIDOnboarding).filter(city__isnull=False).annotate(handle_lower=Lower("city")).values('handle_lower').annotate(the_count=Count('city')).values_list('handle_lower', 'the_count')
    maxPerCity = 0
    # ? GET THE MAX VALUE FOR CHARTS
    for name, value in cities:
        maxPerCity += value

    # ? Countclients
    countClient = len(getIDOnboarding)
    countWriter = onboardingApplicant.objects.filter(
        jobTitle='Copy Writer').count()
    countTrans = onboardingApplicant.objects.filter(
        jobTitle='Editor').count()
    countEditor = onboardingApplicant.objects.filter(
        jobTitle='Translator').count()

    # ? generating random number for the userlist
    userList = list(clients)
    counterList = 10
    if len(userList) < 10:
        counterList = len(userList)
    random_items = random.sample(userList, counterList)
    # ?/end/

    modalform = applicantScoreForm()
    if request.method == 'POST':

        instance = accounts.objects.get(id=pk)
        user = onboardingApplicant.objects.filter(
            accounts=instance).first()
        modalform = applicantScoreForm(request.POST, instance=user)
        # print(modalform)
        if modalform.is_valid():
            score = modalform.cleaned_data['score']
            modalform = modalform.save(commit=False)
            if int(score) > 80:
                modalform.status = 'PASSED'
            else:
                modalform.status = 'FAILED'
            modalform.save()
            return redirect('applicantmanagement')
        else:
            print(modalform.errors)

    if pk is None:
        context = {'applicantList': users,
                   'randomApplicants': random_items,
                   'countclient': countClient, 'countWriter': countWriter,
                   'countTrans': countTrans, 'countEditor': countEditor,
                   'cities': cities, 'maxPerCity': maxPerCity}
        return render(request, 'main/Admin/onboarding.html', context,)
    else:

        instance = accounts.objects.get(id=pk)
        if onboardingApplicant.objects.filter(accounts=instance).exists():
            user = onboardingApplicant.objects.filter(
                accounts=instance).first()
            print(user)
            modalform = applicantScoreForm(instance=user)
        else:
            modalform = applicantScoreForm(
                initial={'accounts': pk, 'status': 'NONE'})
        context = {'applicantList': users,
                   'randomApplicants': random_items, 'instance': instance, 'modalform': modalform,
                   'countclient': countClient, 'countWriter': countWriter,
                   'countTrans': countTrans, 'countEditor': countEditor,
                   'cities': cities, 'maxPerCity': maxPerCity}
        return render(request, 'main/Admin/onboarding.html', context)


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def rejectedapp(request):
    context = {}
    return render(request, 'main/Admin/rejectedapp.html', context)


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


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def setting(request):
    context = {}
    return render(request, 'main/Admin/setting.html', context)


# def addScore(request, pk):

#     instance = get_object_or_404(onboardingApplicant, id=id)
#     print(instance)
#     context = {
#         'instance': instance
#     }
#     return render(request, 'main/Admin/include/scoremodal.html', context)
