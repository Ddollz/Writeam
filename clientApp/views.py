from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from accounts.models import accounts
# Create your views here.


def index(request):
    context = {}
    if request.user.is_authenticated:
        client = accounts.objects.get(username=request.user)  # get Some User.
        # print(client.groups.all()[0])
        context = {'group': client.groups.all()[0]}

    return render(request, 'main/Client/index.html', context)


def faq(request):
    context = {}
    if request.user.is_authenticated:
        client = accounts.objects.get(username=request.user)  # get Some User.
        # print(client.groups.all()[0])
        context = {'group': client.groups.all()[0]}

    return render(request, 'main/Client/faq.html', context)


# @allowed_users(allowed_roles=['Clients', 'HR Staff', 'HR Manager'])
@login_required(login_url='signup')
def resume(response):
    # form = signUp()
    return render(response, 'main/Client/resume.html', {})
