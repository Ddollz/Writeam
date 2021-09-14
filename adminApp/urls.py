from django.urls import path
from . import views

urlpatterns = [
    path("dashboard", views.dashboard, name="dashboard"),
    path("adminUsers", views.adminUsers, name="adminUsers"),
    path("applicantmanagement", views.applicantManagement,
         name="applicantmanagement"),

    path("applicantmanagement/<int:pk>", views.applicantManagement,
         name="applicantmanagement"),

    path("resumePrev/<str:pk>", views.ResumePreview, name="resumePrev"),

    path("onboarding", views.onboarding,
         name="onboarding"),
    path("rejectedapp", views.rejectedapp,
         name="rejectedapp"),

    path("setting", views.setting,
         name="setting"),

    #     path("addscore/<int:pk>", views.addScore, name="addscore"),

]
