from django import forms
from django.forms import ModelForm
from .models import *


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
