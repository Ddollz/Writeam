from django.urls import path
from . import views

urlpatterns = [
    path("signup", views.signup, name="signup"),
    path("signin", views.signin, name="signin"),
    path("logout", views.logoutUser, name="logout"),
    path("signupadmin", views.signupadmin, name="signupadmin"),
    path("updateProfile/<str:pk>", views.updateProfile, name="updateProfile"),
    # path("success/<str:pk>", views.success, name="success"),

]
