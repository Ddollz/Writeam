from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import Group
from .forms import clientFormReg, clientFormLogin, adminFormReg
from .decorators import unauthenticated_user

# Create your views here.


@unauthenticated_user
def signup(request):
    if request.method == 'POST':
        form = clientFormReg(request.POST)
        if form.is_valid():
            user = form.save()
            # add group
            group = Group.objects.get(name='Clients')
            user.groups.add(group)
            # remove group This is temporary
            # group.user_set.remove(user)
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
            # add group
            group = Group.objects.get(name='HRStaff')
            user.groups.add(group)
            # remove group This is temporary
            # group.user_set.remove(user)
            return redirect('signin')
    else:
        form = adminFormReg()
    return render(request, 'main/Admin/Signup.html', {'form': form, 'errors': form.errors})
