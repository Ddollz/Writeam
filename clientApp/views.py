from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from accounts.models import accounts
from .forms import personalInfo, proAndEmpInfo
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
def resume(request):

    if request.method == 'POST':
        form1 = personalInfo(request.POST)
        form2 = proAndEmpInfo(request.POST)
        if form1.is_valid():
            print(form1.cleaned_data['fname'])
        if form2.is_valid():
            print(form2.cleaned_data['bday'])

    form1 = personalInfo()
    form2 = proAndEmpInfo()
    return render(request, 'main/Client/resume.html', {'form1': form1, 'form2': form2})
