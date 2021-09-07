from django.urls import path
from . import views

urlpatterns = [

    path("", views.index, name="index"),
    path("home", views.index, name="index"),
    path("faq", views.faq, name="faq"),
    path("userprofile", views.profile, name="userprofile"),
    path("resume", views.resume, name="resume"),

]
