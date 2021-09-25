from django.db import models

# Create your models here.

JOB_CHOICES = (
    ('Copy Writer', 'Copy Writer'),
    ('Translator', 'Translator'),
    ('Editor', 'Editor'),
    ('None', 'None'),
)


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


class manpower(models.Model):
    name = models.CharField(
        verbose_name="Requester Name", max_length=255, null=False)
    department = models.CharField(
        verbose_name="Department", choices=JOB_CHOICES, default='None', max_length=255, null=False)

    requestDate = models.DateTimeField(blank=True, null=True)

    reason = models.TextField(
        verbose_name="Reason", max_length=255, null=False)

    designation = models.CharField(
        verbose_name="Designation", choices=JOB_CHOICES, default='None', max_length=255, null=False)

    nosCandidate = models.PositiveIntegerField(
        verbose_name="nos of Candidate", default=0, null=True, blank=True)

    currentCandidate = models.PositiveIntegerField(
        verbose_name="Accepted of Candidate", default=0, null=True, blank=True)

    is_Finished = models.BooleanField(default=False)

    requirements = models.TextField(
        verbose_name="Skill", max_length=255, null=False)

    lastSubmitted = models.DateTimeField(
        auto_now_add=True, blank=True, null=True)

    class Meta:
        verbose_name = "Manpower Request"

    def __str__(self):
        return self.department or ' '
