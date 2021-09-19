from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import Group
from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_decode, urlsafe_base64_encode
from django.utils.encoding import force_bytes, force_str, force_text, DjangoUnicodeDecodeError
from django.core.mail import EmailMessage
from django.conf import settings

from .forms import clientFormReg, clientFormLogin, adminFormReg
from .models import accounts
from .decorators import unauthenticated_user
from .utils import generate_token
from clientApp.models import personalDetails, article, jobapplication
# Create your views here.


def set_activation_email(user, request):
    current_site = get_current_site(request)
    email_subject = 'Writeam: Activate your account'
    email_body = render_to_string('authentication/activate.html', {
        'user': user, 'domain': current_site, 'uid': urlsafe_base64_encode(force_bytes(user.pk)),
        'token': generate_token.make_token(user)})

    email = EmailMessage(subject=email_subject, body=email_body,
                         from_email=settings.EMAIL_HOST_USER,
                         to=[user.email])
    email.send()


@ unauthenticated_user
def signup(request):
    if request.method == 'POST':
        form = clientFormReg(request.POST)
        if form.is_valid():
            user = form.save()
            # add group
            group = Group.objects.get(name='Clients')
            user.groups.add(group)
            print(user)
            personalDetails.objects.create(
                accounts=user,
            )
            article.objects.create(
                accounts=user,
            )
            jobapplication.objects.create(
                accounts=user,
            )
            set_activation_email(user, request)
            return render(request, 'authentication/activate-notif.html', {})
    else:
        form = clientFormReg()
    return render(request, 'main/Client/Signup.html', {'form': form, 'errors': form.errors})


@ unauthenticated_user
def signin(request):
    if request.method == 'POST':
        form = clientFormLogin(request.POST)
        if form.is_valid():
            email = form.cleaned_data.get('email')
            password = form.cleaned_data.get('password')
            user = authenticate(request, email=email,
                                password=password)
            if not user.is_email_verified:
                return render(request, 'main/Client/Signin.html', {'form': form, 'errors': "Email is not verified, Please check your email inbox"})

            if not user.is_active:
                return render(request, 'main/Client/Signin.html', {'form': form, 'errors': "Account is not active, Please contact your Administrator"})

            if user is None:
                return render(request, 'main/Client/Signin.html', {'form': form, 'errors': "Invalid Username or Password"})

            login(request, user)
            group = user.groups.all()
            print(group[0])
            if(str(group[0]) == "Clients"):
                return redirect('/')
            else:
                return redirect('dashboard')

    else:
        form = clientFormLogin()
    return render(request, 'main/Client/Signin.html', {'form': form, 'errors': form.errors})


def logoutUser(request):
    logout(request)
    return redirect('signin')


@ unauthenticated_user
def signupadmin(request):
    if request.method == 'POST':
        form = adminFormReg(request.POST)
        if form.is_valid():
            form.is_staff = True
            user = form.save()
            group = Group.objects.get(name='HR Staff')
            user.groups.add(group)
            personalDetails.objects.create(
                accounts=user,
            )
            article.objects.create(
                accounts=user,
            )
            jobapplication.objects.create(
                accounts=user,
            )

            set_activation_email(user, request)
            return render(request, 'authentication/activate-notif.html', {})
    else:
        form = adminFormReg()
    return render(request, 'main/Admin/Signup.html', {'form': form, 'errors': form.errors})


def updateProfile(request, pk):
    user = accounts.objects.get(id=pk)
    if request.method == 'POST':
        user = accounts.objects.get(id=pk)
        user.email = request.POST.get('email')
        user.address = request.POST.get('address')
        user.phone = request.POST.get('phone')
        user.first_name = request.POST.get('fname')
        user.last_name = request.POST.get('lname')
        filepath = request.FILES['avatar'] if 'avatar' in request.FILES else False
        if filepath:
            user.profile_image = request.FILES['avatar']

        user.save()

    context = {'user': user}
    return render(request, 'main/Admin/include/updateUser.html', context)


def activate_email_page(request):
    if request.method == 'POST':
        try:
            user = accounts.objects.get(email=request.POST.get("email"))
        except accounts.DoesNotExist:
            user = None

        if user != None:
            set_activation_email(user, request)
            return render(request, 'authentication/activate-notif.html', {})
        else:
            return render(request, 'authentication/activate-resend.html', {'errors': 'Email does not exist!'})
    return render(request, 'authentication/activate-resend.html', {})


def activate_sucess(request):
    return render(request, 'authentication/activate-sucess.html', {})


def activate_user(request, uidb64, token):
    try:
        uid = force_text(urlsafe_base64_decode(uidb64))
        user = accounts.objects.get(pk=uid)
    except Exception as e:
        user = None

    if user and generate_token.check_token(user, token):
        user.is_email_verified = True
        user.save()
        return redirect('activate-sucess')

    return render(request, 'authentication/activate-fail.html', {'user': user})
