from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import accounts
from django.core.exceptions import ValidationError


class clientFormReg(UserCreationForm):

    email = forms.EmailField(label="", max_length=255, required=True,  error_messages={'unique': 'The Email is already registered'},
                             widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'email', 'placeholder': 'Email'}))
    username = forms.CharField(label="", max_length=255, required=True, error_messages={'unique': 'The Username is already registered'},
                               widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'text', 'placeholder': 'Username'}))

    first_name = forms.CharField(label="", max_length=255, required=True,
                                 widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'text', 'placeholder': 'Firstname'}))
    last_name = forms.CharField(label="", max_length=255, required=True,
                                widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'text', 'placeholder': 'Lastname'}))

    password1 = forms.CharField(label="", max_length=255, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'type': 'password', 'placeholder': 'Password', 'id': 'password'}))
    password2 = forms.CharField(label="", max_length=255, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'type': 'password', 'placeholder': 'Confirm Password', 'id': 'passconf'}))

    class Meta:
        model = accounts
        fields = ('email', 'username', 'first_name',
                  'last_name', 'password1', 'password2')

    def clean(self):
        email = self.cleaned_data.get('The Email is already registered')
        if accounts.objects.filter(email=email).exists():
            raise ValidationError("Email exists")
        return self.cleaned_data


class clientFormLogin(forms.Form):
    email = forms.CharField(label="", max_length=255, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'type': 'text', 'placeholder': 'Username or Email'}))
    password = forms.CharField(label="", max_length=255, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'type': 'password', 'placeholder': 'Password'}))

    # def clean(self):
    #     username = self.cleaned_data.get('username')
    #     password = self.cleaned_data.get('password')

    # def clean_username(self):
    #     cd = self.cleaned_data
    #     username = cd.get('username')
    #     if not User.objects.filter(username=username).exists():
    #         raise forms.ValidationError("This is an invalid user")
    #     return username


class adminFormReg(UserCreationForm):

    email = forms.EmailField(label="", max_length=255, required=True,  error_messages={'unique': 'The Email is already registered'},
                             widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'email', 'placeholder': 'Email'}))
    username = forms.CharField(label="", max_length=255, required=True, error_messages={'unique': 'The Username is already registered'},
                               widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'text', 'placeholder': 'Username'}))
    password1 = forms.CharField(label="", max_length=255, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'type': 'password', 'placeholder': 'Password', 'id': 'password'}))
    password2 = forms.CharField(label="", max_length=255, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'type': 'password', 'placeholder': 'Confirm Password', 'id': 'passconf'}))

    def save(self, commit=True):
        user = super(adminFormReg, self).save(commit=False)
        user.is_staff = True
        if commit:
            user.save()

        return user

    class Meta:
        model = accounts
        fields = ('email', 'username', 'password1', 'password2')

    def clean(self):
        email = self.cleaned_data.get('The Email is already registered')
        if accounts.objects.filter(email=email).exists():
            raise ValidationError("Email exists")
        return self.cleaned_data
