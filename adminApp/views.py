from django.shortcuts import render, redirect
from django.http import HttpResponse
from accounts.decorators import unauthenticated_user, allowed_users
from django.contrib.auth.decorators import login_required
from accounts.models import accounts
from clientApp.models import personalDetails, employmentHistory, education, skill, link, reference
from .models import onboardingApplicant
from .forms import *
import random
# Create your views here.


@allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def dashboard(request):
    context = {}
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

        modalform = applicantScoreForm(request.POST)
        # print(modalform)
        if modalform.is_valid():
            modalform.save()
            return redirect('applicantmanagement')

    if pk is None:
        context = {'applicantList': users, 'randomApplicants': random_items}
        return render(request, 'main/Admin/applicantstatus.html', context)
    else:
        instance = accounts.objects.get(id=pk)
        modalform = applicantScoreForm(
            initial={'accounts': pk, 'status': 'NONE'})
        context = {'applicantList': users,
                   'randomApplicants': random_items, 'instance': instance, 'modalform': modalform}
        return render(request, 'main/Admin/applicantstatus.html', context)

# ! for tommorow
# if some_queryset.filter(pk=entity_id).exists():
    #print("Entry contained in queryset")
    # filter(A).filter(B)


@allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def onboarding(request):
    context = {}
    return render(request, 'main/Admin/onboarding.html', context)


@allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def rejectedapp(request):
    context = {}
    return render(request, 'main/Admin/rejectedapp.html', context)


@allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
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


@allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
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
