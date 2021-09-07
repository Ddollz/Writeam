from django import forms
from django.forms import ModelForm
from .models import personalDetails, employmentHistory, education, skill, link, reference, article


class personalDetailsForm(ModelForm):
    profile_image = forms.ImageField(label="", widget=forms.FileInput(
        attrs={'type': 'file', 'id': 'mediaFile'}))
    jobTitle = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'jobTitle'}))
    fname = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'fname'}))
    lname = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'lname'}))
    email = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'email', 'class': 'form-control', 'id': 'email'}))
    phone = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'phone'}))
    country = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'country'}))
    city = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'city'}))
    address = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'address'}))
    birthplace = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'pdate'}))
    birthdate = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'bdate'}))
    nationality = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'national'}))
    profSummary = forms.CharField(label="", required=False, widget=forms.Textarea(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'summaryEditor'}))
    postalcode = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'postal'}))

    class Meta:
        model = personalDetails
        fields = '__all__'
        exclude = ['accounts']


class employmentHistoryForm(ModelForm):
    JobTitle = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control jobTitle'}))
    start_date = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control startDate'}))
    end_date = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control endDate'}))
    employer = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control employerName'}))
    city = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control employerCity'}))
    description = forms.CharField(label="", required=False, widget=forms.Textarea(
        attrs={'type': 'text', 'class': 'form-control employeeEditor', 'style': 'height: 100px;'}))

    class Meta:
        model = employmentHistory
        fields = '__all__'
        exclude = ['personal']


class educationForm(ModelForm):
    school = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control school'}))
    start_date = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control educStartDate'}))
    end_date = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control educEndDate'}))
    degree = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control degree'}))
    city = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control educCity'}))

    class Meta:
        model = education
        fields = '__all__'
        exclude = ['personal']


class linkForm(ModelForm):
    link = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control socialLink'}))

    class Meta:
        model = link
        fields = '__all__'
        exclude = ['personal']


class skillForm(ModelForm):
    skill = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control skilltitle'}))

    DELETE = forms.BooleanField(
        widget=forms.CheckboxInput(attrs={'class': 'btn-check'}))

    class Meta:
        model = skill
        fields = '__all__'
        exclude = ['personal']


class referenceForm(ModelForm):

    name = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control refname'}))
    email = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'email', 'class': 'form-control refEmail'}))
    company = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control refcompany'}))
    phone = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control refPhone'}))

    class Meta:
        model = reference
        fields = '__all__'
        exclude = ['personal']


class articleform(ModelForm):
    headline = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control'}))
    article = forms.FileField(required=False, widget=forms.FileInput(
        attrs={'type': 'file', 'class': 'form-control', 'id': 'formFile'}))

    class Meta:
        model = article
        fields = '__all__'
        exclude = ['accounts']
