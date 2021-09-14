from django.db import models
from accounts.models import accounts
from django.core.validators import MaxValueValidator


# Create your models here.

JOB_CHOICES = (
    ('Copy Writer', 'Copy Writer'),
    ('Translator', 'Translator'),
    ('Editor', 'Editor'),
    ('None', 'None'),
)

APPLICANT_STATUS = (
    ('NONE', 'NONE'),
    ('FAILED', 'FAILED'),
    ('PASSED', 'PASSED'),
)


class onboardingApplicant(models.Model):
    accounts = models.OneToOneField(
        accounts, null=True, on_delete=models.CASCADE)
    jobTitle = models.CharField(choices=JOB_CHOICES, default='None',
                                verbose_name="Job Title Accepted", max_length=50, null=True, blank=True)
    score = models.PositiveIntegerField(verbose_name="Applicant Score",
                                        validators=[MaxValueValidator(100)], null=True)
    status = models.CharField(
        max_length=30, choices=APPLICANT_STATUS, default='NONE', null=True, blank=True)
    dateScore = models.DateTimeField(
        verbose_name="Date Validate", auto_now_add=True)
    remarks = models.TextField(max_length=255, null=True, blank=True)

    class Meta:
        verbose_name = "Onboarding Applicant"

    def __str__(self):
        return self.jobTitle or ' '
