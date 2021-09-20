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

    class Meta:
        model = jobapplication
        widgets = {
            'accounts': forms.HiddenInput(),
            'is_copywriter': forms.HiddenInput(),
            'is_editor': forms.HiddenInput(),
            'is_translator': forms.HiddenInput(),
            'submitApplication': forms.HiddenInput(),
            'is_validated': forms.HiddenInput(),
            'copywriterfinal': forms.HiddenInput(),
            'editorfinal': forms.HiddenInput(),
            'translatorfinal': forms.HiddenInput(),
            'copywriter': forms.HiddenInput(),
            'editor': forms.HiddenInput(),
            'translator': forms.HiddenInput(),
        }
        fields = '__all__'
