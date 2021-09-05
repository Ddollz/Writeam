from django import forms
from django.forms import ModelForm, widgets
from .models import personalDetails, employmentHistory, education, skill, link, reference


class personalDetailsForm(ModelForm):
    profile_image = forms.ImageField(label="", widget=forms.FileInput(
        attrs={'type': 'file', 'id': 'mediaFile'}))
    jobTitle = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'jobTitle'}))
    fname = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'fname'}))
    lname = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'lname'}))
    email = forms.EmailField(label="", required=False, widget=forms.TextInput(
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
        attrs={'type': 'text', 'class': 'form-control jobTitle', 'name': 'jobTitle'}))
    start_date = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control startDate', 'name': 'start_date'}))
    end_date = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control endDate', 'name': 'end_date'}))
    employer = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control employerName', 'name': 'employer'}))
    city = forms.CharField(label="", required=False, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control employerCity', 'name': 'city'}))
    description = forms.CharField(label="", required=False, widget=forms.Textarea(
        attrs={'type': 'text', 'class': 'form-control employeeEditor', 'style': 'height: 100px;', 'name': 'description'}))

    class Meta:
        model = employmentHistory
        fields = '__all__'
        exclude = ['personal']
