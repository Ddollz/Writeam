from django.shortcuts import render, redirect
from django.http import HttpResponse
from accounts.decorators import unauthenticated_user, allowed_users
from django.contrib.auth.decorators import login_required
from accounts.models import accounts
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
    context = {}
    return render(request, 'main/Admin/applicantmanagement.html', context)


@allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def applicantStatus(request):
    users = accounts.objects.all()
    context = {'applicantList': users}
    return render(request, 'main/Admin/applicantstatus.html', context)


@allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def Calendar(request):
    context = {}
    return render(request, 'main/Admin/calendar.html', context)
