from django.db import models

# Create your models here.


class jobList(models.Model):
    job_Title = models.CharField(
        verbose_name="Job Title", max_length=255, null=False)
    job_Description = models.TextField(
        verbose_name="Job Description", max_length=255, null=False)
    is_onHire = models.BooleanField(default=True)

    class Meta:
        verbose_name = "Job List"

    def __str__(self):
        return self.job_Title or ' '


class jobSkill(models.Model):
    job_Title = models.ForeignKey(jobList, on_delete=models.CASCADE)
    skill_name = models.CharField(
        verbose_name="Job Skill", max_length=255, null=False)

    class Meta:
        verbose_name = "Job Skill List"

    def __str__(self):
        return self.skill_name or ' '
