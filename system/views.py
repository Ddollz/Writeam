from django.shortcuts import redirect, render
from accounts.decorators import allowed_users
from .models import *
from .forms import *
# Create your views here.


@ allowed_users(allowed_roles=['HR Staff', 'HR Manager'])
def websetting(request, pk=None):
    jobs = jobList.objects.all().order_by('id')

    context = {'jobs': jobs}

    if not pk is None:
        if 'job' in request.get_full_path() and not 'edit' in request.get_full_path() and not 'update' in request.get_full_path():
            job = jobList.objects.get(id=pk)
            if job.is_onHire:
                job.is_onHire = False
            else:
                job.is_onHire = True
            job.save()
            return redirect('websetting')
        elif 'job' in request.get_full_path() and 'edit' in request.get_full_path():
            instance = jobList.objects.get(id=pk)
            skillinstance = instance.jobskill_set.all()
            form = jobListForm(instance=instance)
            context = {'jobs': jobs,
                       'instance': instance, 'skillinstance': skillinstance,
                       'form': form}
        elif 'job' in request.get_full_path() and 'update' in request.get_full_path():
            if request.method == 'POST':
                form = jobListForm(request.POST)
                if form.is_valid():
                    temp = jobList.objects.get(
                        id=pk)
                    form = jobListForm(request.POST, instance=temp)
                    jobSkill.objects.filter(job_Title=temp).delete()
                    tempword = request.POST.get("job_skill")
                    print(tempword.split())
                    for word in tempword.split():
                        newSkill = jobSkill()
                        newSkill.job_Title = temp
                        newSkill.skill_name = word
                        newSkill.save()
                    form.save()
                    return redirect('websetting')

    return render(request, 'main/Admin/setting.html', context)
