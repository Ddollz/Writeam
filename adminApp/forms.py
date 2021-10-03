from django import forms
from django.forms import ModelForm, widgets
from clientApp.models import jobapplication

JOB_CHOICES = (
    ('Copy Writer', 'Copy Writer'),
    ('Translator', 'Translator'),
    ('Editor', 'Editor'),
)


class applicantScoreForm(ModelForm):

    article = forms.CharField(label="", widget=forms.TextInput(
        attrs={'type': 'number', 'class': 'form-control', 'id': 'article', 'min': '0', 'max': '100'}))

    remarks = forms.CharField(label="", required=True, widget=forms.Textarea(
        attrs={'class': 'form-control', 'id': 'remark', 'style': 'height:100px'}))

    class Meta:
        model = jobapplication
        fields = '__all__'
        exclude = ['accounts', 'dateAccepted', 'is_copywriter', 'is_editor', 'is_translator', 'submitApplication',
                   'is_validated', 'dateSubmit', 'jobAccepted',
                   'copywriterfinal', 'editorfinal', 'translatorfinal', 'copywriter', 'editor', 'translator'
                   ]
