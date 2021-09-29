from django import forms
from django.forms import ModelForm
from .models import *

JOB_CHOICES = (
    ('None', 'None'),
    ('Copy Writer', 'Copy Writer'),
    ('Translator', 'Translator'),
    ('Editor', 'Editor'),
)


class jobListForm(ModelForm):

    job_Title = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control'}))
    job_Description = forms.CharField(label="", required=True, widget=forms.Textarea(
        attrs={'class': 'form-control', 'placeholder': 'Leave a comment here', 'style': "height:200px"}))

    class Meta:
        model = jobList
        fields = '__all__'
        # widgets = {'id': forms.HiddenInput()}
        exclude = ['is_onHire']


class manpowerForm(ModelForm):

    name = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'Requesting'}))

    job_Title = forms.ModelChoiceField(queryset=jobList.objects.all(), label="", required=True, widget=forms.Select(
        attrs={'class': 'form-select',  'id': 'department'}))

    requestDate = forms.DateTimeField(label="", required=True, widget=forms.DateInput(
        attrs={'type': 'date', 'class': 'form-control', 'id': 'datereq'}))

    reason = forms.CharField(label="", required=True, widget=forms.Textarea(
        attrs={'type': 'text', 'class': 'form-control', 'style': 'height: 100px; resize: none;', 'placeholder': 'Leave a comment here', 'id': 'float1'}))

    nosCandidate = forms.CharField(label="", required=True, widget=forms.NumberInput(
        attrs={'type': 'number', 'class': 'form-control', 'id': 'noCan', 'min': '0', 'value': '0'}))

    requirements = forms.CharField(label="", required=False, widget=forms.Textarea(
        attrs={'type': 'text', 'class': 'form-control', 'style': 'height: 100px; resize: none;', 'placeholder': 'Leave a comment here', 'id': 'float2'}))

    class Meta:
        model = manpower
        fields = '__all__'
        exclude = ['on_Going']


class contactForm(ModelForm):

    name = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'name', 'placeholder': 'Your Name'}))

    email = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'email', 'class': 'form-control', 'id': 'email', 'placeholder': 'Your Email'}))

    subject = forms.CharField(label="", required=True, widget=forms.TextInput(
        attrs={'type': 'text', 'class': 'form-control', 'id': 'subject', 'placeholder': 'Your Subject'}))

    message = forms.CharField(label="", required=True, widget=forms.Textarea(
        attrs={'type': 'text', 'class': 'form-control', 'style': 'height: 100px; ', 'placeholder': 'Message'}))

    class Meta:
        model = contact
        fields = '__all__'
