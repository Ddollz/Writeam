from django import forms
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.forms import inlineformset_factory
from django.conf import settings
from django.template.loader import render_to_string
from django.contrib.sites.shortcuts import get_current_site
from django.contrib import messages
import datetime
from django.utils import timezone

from .utils import send_html_mail
from accounts.models import accounts
from system.models import *
from system.forms import *
from .models import employmentHistory, personalDetails, education, link, reference, skill, article
from .forms import *

from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity
# Create your views here.


def index(request):
    jobs = jobList.objects.all()
    contactform = contactForm()
    context = {'jobList': jobs, 'contactform': contactform}
    if request.user.is_authenticated:

        client = accounts.objects.get(username=request.user)  # get Some User.
        group = client.groups.all()[0]
        post = ''
        if str(group) == 'Copy Writer Manager':
            post = jobList.objects.get(job_Title='Copy Writer')
        elif str(group) == 'Translator Manager':
            post = jobList.objects.get(job_Title='Translator')
        elif str(group) == 'Editor Manager':
            post = jobList.objects.get(job_Title='Editor')

        paymentForm = paymentform(instance=request.user.deploymentmodel)
        forextForm = forexForm(instance=request.user.deploymentmodel)

        form1 = manpowerForm(
            initial={'name': request.user.first_name + " " + request.user.last_name, 'job_Title': post})
        if request.method == 'POST':
            form1 = manpowerForm(request.POST)
            if form1.is_valid():
                form1.save()
                messages.success(
                    request, 'Your Request has been sent successfully!')
                form1 = manpowerForm(
                    initial={'name': request.user.first_name + " " + request.user.last_name, 'job_Title': post})

            print(form1.errors)
        context = {'group': group, 'jobList': jobs,
                   'form': form1, 'contactform': contactform,
                   'paymentform': paymentForm, 'forextForm': forextForm
                   }

    return render(request, 'main/Client/index.html', context)


def saveForex(request):
    return redirect('index')


def savepaymethod(request):
    if request.user.is_authenticated:
        if request.method == 'POST':
            paymentForm = paymentform(
                request.POST, instance=request.user.deploymentmodel)
            if paymentForm.is_valid():
                gnametemp = paymentForm.cleaned_data['gname']
                gnumbertemp = paymentForm.cleaned_data['gnumber']
                bnametemp = paymentForm.cleaned_data['bname']
                bnumbertemp = paymentForm.cleaned_data['bnumber']

                method = paymentForm.save(commit=False)
                if gnametemp == '':
                    method.gname = ''
                    method.save()
                if gnumbertemp == '':
                    method.gnumber = ''
                    method.save()

                if bnametemp == '':
                    method.bname = ''
                    method.save()
                if bnumbertemp == '':
                    method.bnumber = ''
                    method.save()

                if method.gname != '' and method.gnumber != '':
                    method.is_gcash = True
                    method.save()
                else:
                    method.is_gcash = False
                    method.save()
                if method.bname != '' and method.bnumber != '':
                    method.is_bank = True
                    method.save()
                else:
                    method.is_bank = False
                    method.save()

                messages.success(
                    request, 'Your Payment method save successfuly!')
            else:
                print(paymentForm.errors)

    return redirect('index')


def jobLastStep():
    return redirect('index')


def sendmessage(request):
    if request.user.is_authenticated:
        if request.method == 'POST':
            form1 = contactForm(request.POST)
            if form1.is_valid():
                print("hello")
                form1.save()
                messages.success(
                    request, 'Your Message has been send successfully!!!')
            print(form1.errors)

    return redirect('index')


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
            perDetails = form1.save()
            formapp = formapp.save(commit=False)
            formapp.dateSubmit = timezone.now()
            if request.user.jobapplication.jobAccepted == 'None':
                formapp.submitApplication = True
                formapp.jobAccepted = 'None'
            jobsDetails = jobList.objects.all()

            copywriterskills = ""
            editorskills = ""
            translatorskills = ""

            for each in jobsDetails:
                temp = jobSkill.objects.filter(job_Title=each)
                if each.job_Title == "Copy Writer":
                    for i in temp:
                        copywriterskills = copywriterskills + " "+i.skill_name

                if each.job_Title == "Editor":
                    for i in temp:
                        editorskills = editorskills + " "+i.skill_name

                if each.job_Title == "Translator":
                    for i in temp:
                        translatorskills = translatorskills + " "+i.skill_name

            # get formset workExp input
            tempstringexp = ''
            for f in formset:
                cd = f.cleaned_data
                test = cd.get("description")
                if test != None:
                    tempstringexp = tempstringexp+" "+test
                    # print(test)

            # get formset skill input
            tempstringskill = ''
            for f in formset4:
                cd = f.cleaned_data
                test = cd.get("skill")
                if test != None:
                    tempstringskill = tempstringskill+" "+test
                    # print(test)

            summaryTextArray = [
                perDetails.profSummary,
            ]

            for job in jobsDetails:
                summaryTextArray.append(job.job_Description)

            workExpTextArray1 = [
                tempstringexp.strip(),
            ]

            for job in jobsDetails:
                workExpTextArray1.append(job.job_Description)

            workExpTextArray2 = [
                tempstringexp.strip(),
                copywriterskills.strip(),
                editorskills.strip(),
                translatorskills.strip(),
            ]

            skillTextArray = [
                tempstringskill.strip(),
                copywriterskills.strip(),
                editorskills.strip(),
                translatorskills.strip(),

            ]

            summarySimmilarity = checksimilarity(summaryTextArray)
            expSimmilarity1 = checksimilarity(workExpTextArray1)
            expSimmilarity2 = checksimilarity(workExpTextArray2)
            skillSimmilarity = checksimilarity(skillTextArray)

            formapp.copywriter = calculatorScore(
                summarySimmilarity[0], skillSimmilarity[0], expSimmilarity1[0], expSimmilarity2[0])
            formapp.editor = calculatorScore(
                summarySimmilarity[1], skillSimmilarity[1], expSimmilarity1[1], expSimmilarity2[1])
            formapp.translator = calculatorScore(
                summarySimmilarity[2], skillSimmilarity[2], expSimmilarity1[2], expSimmilarity2[2])
            formapp.save()

            current_site = get_current_site(request)
            template = render_to_string(
                'main/Emails/ResumeSuccess.html', {'name':  request.user.username, 'domain': current_site})
            send_html_mail('WriTeam: Thank you for Applying the Writeam!', template, [
                           request.user.email], settings.EMAIL_HOST_USER)
            # email = EmailMessage(
            #     'WriTeam: Thank you for Applying the Writeam!',
            #     template,
            #     settings.EMAIL_HOST_USER,
            #     [request.user.email]
            # )
            # email.fail_silently = False
            # email.send()

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


def jobaccept(request, pk1):
    user = jobapplication.objects.get(accounts=request.user)
    method = deploymentModel.objects.get(accounts=request.user)

    if user.jobAccepted == 'None':
        if request.method == 'POST':
            forexform = forexForm(
                request.POST, instance=request.user.deploymentmodel)
            if forexform.is_valid():
                forexform.save()
                if method.is_gcash or method.is_bank:
                    if pk1 == 1:
                        user.dateAccepted = timezone.now()
                        user.jobAccepted = "Copy Writer"
                        jobforeign = jobList.objects.get(
                            job_Title='Copy Writer')
                        manRequest = manpower.objects.filter(
                            id=jobforeign.id).filter(is_Finished=False)
                        for man in manRequest:
                            if man.currentCandidate < man.nosCandidate:
                                man.currentCandidate += 1
                                man.save()
                            if man.currentCandidate >= man.nosCandidate:
                                man.is_Finished = True
                                man.save()
                        user.save()
                    elif pk1 == 2:
                        user.dateAccepted = timezone.now()
                        user.jobAccepted = "Editor"

                        jobforeign = jobList.objects.get(
                            job_Title='Editor')
                        manRequest = manpower.objects.filter(
                            id=jobforeign.id).filter(is_Finished=False)

                        for man in manRequest:
                            if man.currentCandidate < man.nosCandidate:
                                man.currentCandidate += 1
                                man.save()
                            if man.currentCandidate >= man.nosCandidate:
                                man.is_Finished = True
                                man.save()
                        user.save()
                    elif pk1 == 3:
                        user.dateAccepted = timezone.now()
                        user.jobAccepted = "Translator"
                        jobforeign = jobList.objects.get(
                            job_Title='Translator')
                        manRequest = manpower.objects.filter(
                            id=jobforeign.id).filter(is_Finished=False)
                        for man in manRequest:
                            if man.currentCandidate < man.nosCandidate:
                                man.currentCandidate += 1
                                man.save()
                            if man.currentCandidate >= man.nosCandidate:
                                man.is_Finished = True
                                man.save()
                        user.save()
                else:
                    messages.warning(
                        request, 'You must have any payment method before accepting the job!')

            else:
                messages.warning(
                    request, 'You must have an account before you start working!')

    return redirect('/')


def checksimilarity(textarray):
    array = []
    vectorizer = CountVectorizer()
    features = vectorizer.fit_transform(textarray)
    for f in features[1:]:
        simmilarities = cosine_similarity(features[0], f) * 100
        simmilarities = simmilarities.flatten()
        for sim in simmilarities:
            matchPer = round(sim, 2)
            array.append(matchPer)
    print(array)
    return array


def calculatorScore(prof, skill, exp1, expskill2):
    score = (exp1 + expskill2) / 2
    score += (prof+skill)/2
    return score
