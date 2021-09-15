from django import forms
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from accounts.models import accounts
from django.forms import inlineformset_factory
from .models import employmentHistory, personalDetails, education, link, reference, skill, article
from .forms import *
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


def profile(request):
    context = {}
    if request.user.is_authenticated:
        client = accounts.objects.get(username=request.user)  # get Some User.
        # print(client.groups.all()[0])
        context = {'group': client.groups.all()[0]}
    return render(request, 'main/Client/userprofile.html', context)

# @allowed_users(allowed_roles=['Clients', 'HR Staff', 'HR Manager'])


@login_required(login_url='signup')
def resume(request):
    user = request.user.personaldetails
    articleuser = request.user.article
    jobappuser = request.user.jobapplication

    form1 = personalDetailsForm(instance=user)
    formfile = articleform(instance=articleuser)
    formapp = jobAppForm(instance=jobappuser)

    workExpFormSet = inlineformset_factory(
        personalDetails, employmentHistory, form=employmentHistoryForm, extra=3, max_num=3)
    formset = workExpFormSet(instance=user)

    educationFormSet = inlineformset_factory(
        personalDetails, education, form=educationForm, max_num=3)
    formset1 = educationFormSet(instance=user)

    linkFormSet = inlineformset_factory(
        personalDetails, link, form=linkForm, max_num=3)
    formset2 = linkFormSet(instance=user)

    referenceFormSet = inlineformset_factory(
        personalDetails, reference, form=referenceForm, max_num=3)
    formset3 = referenceFormSet(instance=user)

    skillFormSet = inlineformset_factory(
        personalDetails, skill, form=skillForm, extra=10, max_num=10)
    formset4 = skillFormSet(instance=user)

    if request.method == 'POST':
        form1 = personalDetailsForm(request.POST, request.FILES, instance=user)
        formapp = jobAppForm(request.POST, instance=jobappuser)
        formfile = articleform(
            request.POST, request.FILES, instance=articleuser)
        formset = workExpFormSet(request.POST, instance=user)
        formset1 = educationFormSet(request.POST, instance=user)
        formset2 = linkFormSet(request.POST, instance=user)
        formset3 = referenceFormSet(request.POST, instance=user)
        formset4 = skillFormSet(request.POST, instance=user)

        # employmentHistory.objects.filter(personaldetails=user).delete()
        if form1.is_valid() and formapp.is_valid() and formset.is_valid() and formset1.is_valid() and formset2.is_valid() and formset3.is_valid() and formset4.is_valid() and formfile.is_valid():
            formset.save()
            formset1.save()
            formset2.save()
            formset3.save()
            formset4.save()
            formfile.save()
            form1.save()

            formapp = formapp.save(commit=False)
            formapp.submitApplication = True
            formapp.save()
            return redirect('/')
        else:
            print(formset1.errors)
            print(formset2.errors)
            print(formset3.errors)
            print(formset4.errors)
            print(formset.errors)
            print(form1.errors)
            print(formfile.errors)
            print(formapp.errors)

            context = {'form1': form1, 'formfile': formfile, 'formapp': formapp,
                       'formset': formset, 'formset1': formset1,
                       'formset2': formset2, 'formset3': formset3,
                       'formset4': formset4,
                       'error1': form1.errors, 'error2': formfile.errors,
                       'error3': formset.errors, 'error4': formset1.errors,
                       'error5': formset2.errors, 'error6': formset3.errors,
                       'error7': formset4.errors,
                       }
            return render(request, 'main/Client/resume.html', context)

    context = {'form1': form1, 'formfile': formfile, 'formapp': formapp,
               'formset': formset, 'formset1': formset1,
               'formset2': formset2, 'formset3': formset3,
               'formset4': formset4,
               }
    return render(request, 'main/Client/resume.html', context)
