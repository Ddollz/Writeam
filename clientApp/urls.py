from django.urls import path
from . import views

urlpatterns = [

    path("", views.index, name="index"),
    path("home", views.index, name="index"),
    path("contact", views.sendmessage, name="contact"),
    path("faq", views.faq, name="faq"),
    path("resume", views.resume, name="resume"),
    path("jobaccept/<int:pk1>", views.jobaccept,
         name="jobaccept"),
]
