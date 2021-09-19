from django.urls import path
from . import views

urlpatterns = [

    path("", views.index, name="index"),
    path("home", views.index, name="index"),
    path("faq", views.faq, name="faq"),
    path("resume", views.resume, name="resume"),

]
