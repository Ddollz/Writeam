from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import Group
from .forms import clientFormReg, clientFormLogin, adminFormReg
from .models import accounts
from .decorators import unauthenticated_user
from clientApp.models import personalDetails, article

# from django.core.mail import EmailMessage
# from django.conf import settings
# from django.template.loader import render_to_string

# Create your views here.


# def success(request, pk):
#     project = accounts.objects.get(id=pk)
#     template = render_to_string(
#         'main/Client/include/emailMsg.html', {'name': project.first_name})
#     email = EmailMessage(
#         'Thank you for registering Writeam!',
#         template,
#         settings.EMAIL_HOST_USER,
#         [project.email],
#     )
#     email.fail_silently = False
#     email.send()
#     return render(request, 'main/Client/Success.html', {})


@unauthenticated_user
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
            # remove group This is temporary
            # group.user_set.remove(user)
            # return redirect('success/'+str(user.id))
            return redirect('signin')
    else:
        form = clientFormReg()
    return render(request, 'main/Client/Signup.html', {'form': form, 'errors': form.errors})


@unauthenticated_user
def signin(request):
    if request.method == 'POST':
        form = clientFormLogin(request.POST)
        if form.is_valid():
            email = form.cleaned_data.get('email')
            password = form.cleaned_data.get('password')
            print(password)
            print(email)
            user = authenticate(request, email=email,
                                password=password)
            if user is None:
                print("test")
                return render(request, 'main/Client/Signin.html', {'form': form, 'errors': "Invalid Username or Password"})
            else:

                print("test")
            # client = User.objects.get(username=username)  # get Some User.
            # print(client.groups.all())

            login(request, user)
            return redirect('/')

    else:
        form = clientFormLogin()
    return render(request, 'main/Client/Signin.html', {'form': form, 'errors': form.errors})


def logoutUser(request):
    logout(request)
    return redirect('signin')


@unauthenticated_user
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
            return redirect('signin')
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
