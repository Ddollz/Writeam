from django import forms
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from accounts.models import accounts
from .models import employmentHistory, personalDetails
from django.forms import inlineformset_factory
from .forms import personalDetailsForm, employmentHistoryForm
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
    user = request.user.personaldetails

    form1 = personalDetailsForm(instance=user)
    workExpFormSet = inlineformset_factory(
        personalDetails, employmentHistory, form=employmentHistoryForm, extra=3, max_num=3)
    formset = workExpFormSet(instance=user)

    if request.method == 'POST':
        form1 = personalDetailsForm(request.POST, request.FILES, instance=user)
        formset = workExpFormSet(request.POST, instance=user)
        # employmentHistory.objects.filter(personaldetails=user).delete()
        if form1.is_valid():
            form1.save()

        if formset.is_valid():
            formset.save()
        else:
            print(formset.errors)

    return render(request, 'main/Client/resume.html', {'form1': form1, 'formset': formset})
