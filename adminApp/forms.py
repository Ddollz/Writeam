from django import forms
from django.forms import ModelForm, widgets
from .models import onboardingApplicant

JOB_CHOICES = (
    ('Copy Writer', 'Copy Writer'),
    ('Translator', 'Translator'),
    ('Editor', 'Editor'),
)


class applicantScoreForm(ModelForm):

    jobTitle = forms.ChoiceField(label="", choices=JOB_CHOICES, widget=forms.Select(
        attrs={'class': 'form-select', 'aria-label': "Default select example"}))

    score = forms.CharField(label="", widget=forms.TextInput(
        attrs={'type': 'number', 'class': 'form-control', 'id': 'score', 'min': '0', 'max': '100'}))

    remarks = forms.CharField(label="", widget=forms.Textarea(
        attrs={'class': 'form-control', 'placeholder': 'Leave a comment here', 'id': 'floatingTextarea', 'style': "height:100px"}))

    class Meta:
        model = onboardingApplicant
        widgets = {'accounts': forms.HiddenInput(
        ), 'status': forms.HiddenInput()}
        fields = '__all__'
