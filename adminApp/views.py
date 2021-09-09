from django.shortcuts import render, redirect
from django.http import HttpResponse
from accounts.decorators import unauthenticated_user, allowed_users
from django.contrib.auth.decorators import login_required
from accounts.models import accounts
from clientApp.models import personalDetails, employmentHistory, education, skill, link, reference
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
def applicantManagement(request):
    users = accounts.objects.all()
    context = {'applicantList': users}
    return render(request, 'main/Admin/applicantstatus.html', context)


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
    print(linkdata)
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
