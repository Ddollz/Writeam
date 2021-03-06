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

    def clean_email(self):
        email = self.cleaned_data['email'].lower()
        try:
            account = accounts.objects.exclude(
                pk=self.instance.pk).get(email=email)
        except accounts.DoesNotExist:
            return email
        raise forms.ValidationError('Email "%s" is already in use.' % account)

    def clean_username(self):
        username = self.cleaned_data['username']
        try:
            account = accounts.objects.exclude(
                pk=self.instance.pk).get(username=username)
        except accounts.DoesNotExist:
            return username
        raise forms.ValidationError(
            'Username "%s" is already in use.' % username)


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

    first_name = forms.CharField(label="", max_length=255,
                                 widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'text', 'placeholder': 'First Name'}))

    last_name = forms.CharField(label="", max_length=255,
                                widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'text', 'placeholder': 'Last Name'}))

    phone = forms.CharField(label="", max_length=255,
                            widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'text', 'placeholder': 'Phone'}))

    address = forms.CharField(label="", max_length=255,
                              widget=forms.TextInput(attrs={'class': 'form-control', 'type': 'text', 'placeholder': 'Address'}))

    password1 = forms.CharField(label="", max_length=255, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'type': 'password', 'placeholder': 'Password', 'id': 'password'}))
    password2 = forms.CharField(label="", max_length=255, required=True, widget=forms.TextInput(
        attrs={'class': 'form-control', 'type': 'password', 'placeholder': 'Confirm Password', 'id': 'passconf'}))

    def save(self, commit=True):
        user = super(adminFormReg, self).save(commit=False)
        user.is_staff = False
        user.is_active = False
        if commit:
            user.save()

        return user

    class Meta:
        model = accounts
        fields = ('email', 'username', 'first_name', 'last_name',
                  'phone', 'address', 'password1', 'password2')

    def clean_email(self):
        email = self.cleaned_data['email'].lower()
        try:
            account = accounts.objects.exclude(
                pk=self.instance.pk).get(email=email)
        except accounts.DoesNotExist:
            return email
        raise forms.ValidationError('Email "%s" is already in use.' % account)

    def clean_username(self):
        username = self.cleaned_data['username']
        try:
            account = accounts.objects.exclude(
                pk=self.instance.pk).get(username=username)
        except accounts.DoesNotExist:
            return username
        raise forms.ValidationError(
            'Username "%s" is already in use.' % username)
