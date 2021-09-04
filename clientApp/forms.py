from django import forms
from django_quill.forms import QuillFormField


class personalInfo(forms.Form):
    fname = forms.CharField(label="", max_length=255, required=True,
                            widget=forms.TextInput(attrs={'class': 'form-control', 'name': 'fname', 'type': 'text'}))


class proAndEmpInfo(forms.Form):
    bday = forms.CharField(label="", max_length=255, required=True,
                           widget=forms.TextInput(attrs={'class': 'form-control', 'name': 'bdate', 'type': 'text'}))
