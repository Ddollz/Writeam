from django import forms
from django.forms import ModelForm
from .models import personalDetails, employmentHistory, education, skill, link, reference


# class personalInfo(forms.Form):
#     fname = forms.CharField(label="", max_length=255, required=True,
#                             widget=forms.TextInput(attrs={'class': 'form-control', 'name': 'fname', 'type': 'text'}))


# class proAndEmpInfo(forms.Form):
#     bday = forms.CharField(label="", max_length=255, required=True,
#                            widget=forms.TextInput(attrs={'class': 'form-control', 'name': 'bdate', 'type': 'text'}))


class personalDetailsForm(ModelForm):
    profile_image = forms.ImageField(label="", widget=forms.TextInput(
        attrs={'type': 'file', 'id': 'mediaFile'}))

    jobTitle = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'jobTitle'}))
    fname = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'fname'}))
    lname = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'lname'}))
    email = forms.EmailField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'email', 'class': 'form-control', 'id': 'email'}))
    phone = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'phone'}))
    country = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'country'}))
    city = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'city'}))
    address = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'address'}))
    birthplace = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'pdate'}))
    birthdate = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'bdate'}))
    nationality = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'national'}))
    profSummary = forms.CharField(label="", required=True, widget=forms.Textarea(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'summaryEditor'}))
    postalcode = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'postal'}))

    class Meta:
        model = personalDetails
        fields = '__all__'
