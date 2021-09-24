from django.db import models
from accounts.models import accounts
from django.core.validators import MaxValueValidator

# Create your models here.


def get_profile_image_filepath(self, filename):
    return f'profile_images/{self.pk}/{"profile_image.png"}'


def get_default_profile():
    return "writeamImage/profile_image.png"


def get_profile_article_filepath(self, filename):
    return f'article/{self.accounts.pk}/{filename}'


class jobapplication(models.Model):
    accounts = models.OneToOneField(
        accounts, null=True, on_delete=models.CASCADE)

    is_copywriter = models.BooleanField(default=False)
    is_editor = models.BooleanField(default=False)
    is_translator = models.BooleanField(default=False)

    is_copywriter_hired = models.BooleanField(default=False)
    is_editor_hired = models.BooleanField(default=False)
    is_translator_hired = models.BooleanField(default=False)

    is_validated = models.BooleanField(default=False)

    copywriter = models.PositiveIntegerField(verbose_name="Copywriter Score",
                                             validators=[MaxValueValidator(100)], default=0, null=True, blank=True)

    editor = models.PositiveIntegerField(verbose_name="Editor Score",
                                         validators=[MaxValueValidator(100)], default=0, null=True, blank=True)

    translator = models.PositiveIntegerField(verbose_name="Translator Score",
                                             validators=[MaxValueValidator(100)], default=0, null=True, blank=True)

    article = models.PositiveIntegerField(verbose_name="Article Score",
                                          validators=[MaxValueValidator(100)], default=0, null=True, blank=True)
    copywriterfinal = models.PositiveIntegerField(verbose_name="Copywriter FS",
                                                  validators=[MaxValueValidator(100)], default=0, null=True, blank=True)

    editorfinal = models.PositiveIntegerField(verbose_name="Editor FS",
                                              validators=[MaxValueValidator(100)], default=0, null=True, blank=True)

    translatorfinal = models.PositiveIntegerField(verbose_name="Translator FS",
                                                  validators=[MaxValueValidator(100)], default=0, null=True, blank=True)

    remarks = models.TextField(max_length=255, null=True, blank=True,
                               default="Writeam Staff are reviewing your resume and article")
    progress = models.CharField(
        max_length=255, default='Writeam Staff\'s are reviewing your applications', null=True, blank=True)

    jobAccepted = models.CharField(verbose_name="Accepted Job",
                                   max_length=255, default='None', null=True, blank=True)
    dateAccepted = models.DateTimeField(blank=True, null=True)

    submitApplication = models.BooleanField(default=False)
    dateSubmit = models.DateTimeField(
        verbose_name="Date Submit", auto_now=True)

    class Meta:
        verbose_name = "Job Application"


class article(models.Model):
    accounts = models.OneToOneField(
        accounts, null=True, on_delete=models.CASCADE)
    headline = models.CharField(max_length=255, null=True)
    article = models.FileField(
        max_length=255, upload_to=get_profile_article_filepath, null=True, blank=True)

    class Meta:
        verbose_name = "Article"

    def __str__(self):
        return self.headline or ' '

    def get_profile_article_filename(self):
        return str(self.article)[str(self.article).index(f'article/{self.pk}/'):]


class personalDetails(models.Model):
    accounts = models.OneToOneField(
        accounts, null=True, on_delete=models.CASCADE)
    profile_image = models.ImageField(
        max_length=255, upload_to=get_profile_image_filepath, null=True, blank=True, default=get_default_profile)
    jobTitle = models.CharField(max_length=200, null=True)
    fname = models.CharField(verbose_name="First Name",
                             max_length=200, null=True)
    lname = models.CharField(verbose_name="Last Name",
                             max_length=200, null=True)
    email = models.CharField(max_length=200, null=True)
    phone = models.CharField(max_length=200, null=True)
    country = models.CharField(max_length=200, null=True)
    city = models.CharField(max_length=200, null=True)
    address = models.CharField(max_length=200, null=True)
    birthplace = models.CharField(max_length=200, null=True)
    birthdate = models.CharField(max_length=200, null=True)
    nationality = models.CharField(max_length=200, null=True)
    profSummary = models.TextField(max_length=500, null=True)
    postalcode = models.PositiveIntegerField(
        validators=[MaxValueValidator(9999)], null=True)

    def __str__(self):
        return self.jobTitle or ' '

    class Meta:
        verbose_name = "Personal Detail"

    def get_profile_image_filename(self):
        return str(self.profile_image)[str(self.profile_image).index(f'profile_image/{self.pk}/'):]


class employmentHistory(models.Model):
    JobTitle = models.CharField(max_length=200, null=True)
    start_date = models.CharField(max_length=200, null=True)
    end_date = models.CharField(max_length=200, null=True)
    employer = models.CharField(max_length=200, null=True)
    city = models.CharField(max_length=200, null=True)
    description = models.TextField(max_length=200, null=True)
    personaldetails = models.ForeignKey(
        personalDetails, null=True, on_delete=models.CASCADE)

    class Meta:
        verbose_name = "Employment History"

    def __str__(self):
        return self.JobTitle or ' '


class education(models.Model):
    personaldetails = models.ForeignKey(
        personalDetails, null=True, on_delete=models.CASCADE)
    school = models.CharField(max_length=200, null=True)
    degree = models.CharField(max_length=200, null=True)
    start_date = models.CharField(max_length=200, null=True)
    end_date = models.CharField(max_length=200, null=True)
    city = models.CharField(max_length=200, null=True)

    class Meta:
        verbose_name = "Eduction"

    def __str__(self):
        return self.school or ' '


class skill(models.Model):
    personaldetails = models.ForeignKey(
        personalDetails, null=True, on_delete=models.CASCADE)
    skill = models.TextField(max_length=300, null=True)

    class Meta:
        verbose_name = "Skill"

    def __str__(self):
        return self.skill or ' '


class link(models.Model):
    personaldetails = models.ForeignKey(
        personalDetails, null=True, on_delete=models.CASCADE)
    link = models.TextField(max_length=300, null=True)

    class Meta:
        verbose_name = "Social Link"

    def __str__(self):
        return self.link or ' '


class reference(models.Model):
    personaldetails = models.ForeignKey(
        personalDetails, null=True, on_delete=models.CASCADE)
    name = models.CharField(max_length=200, null=True)
    company = models.CharField(max_length=200, null=True)
    phone = models.CharField(max_length=200, null=True)
    email = models.CharField(max_length=200, null=True)

    class Meta:
        verbose_name = "Reference"

    def __str__(self):
        return self.name or ' '
