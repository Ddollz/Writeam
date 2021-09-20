from django import forms
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.forms import inlineformset_factory
from django.conf import settings
from django.template.loader import render_to_string
from django.contrib.sites.shortcuts import get_current_site
from .utils import send_html_mail

from accounts.models import accounts
from system.models import *
from .models import employmentHistory, personalDetails, education, link, reference, skill, article
from .forms import *

from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity
# Create your views here.


def index(request):
    jobs = jobList.objects.all()

    context = {'jobList': jobs}
    if request.user.is_authenticated:
        client = accounts.objects.get(username=request.user)  # get Some User.
        # print(client.groups.all()[0])
        context = {'group': client.groups.all(
        )[0], 'jobList': jobs}

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
            formapp.submitApplication = True
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
    if user.jobAccepted == 'None':
        if pk1 == 2:
            user.jobAccepted = "Editor"
            user.save()
            print("test")
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


def calculatorScore(prof, skill, exp1, exp2):
    score = (exp1 + exp2) / 2
    score += (prof+skill)/2
    return score
