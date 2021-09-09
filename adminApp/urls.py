from django.urls import path
from . import views

urlpatterns = [
    path("dashboard", views.dashboard, name="dashboard"),
    path("adminUsers", views.adminUsers, name="adminUsers"),
    path("applicantmanagement", views.applicantManagement,
         name="applicantmanagement"),
    # path("applicantstatus", views.applicantStatus, name="applicantstatus"),
    # path("calendar", views.Calendar, name="calendar"),
    path("resumePrev/<str:pk>", views.ResumePreview, name="resumePrev"),

    path("applicantmanagement", views.applicantManagement,
         name="applicantmanagement"),

    path("onboarding", views.onboarding,
         name="onboarding"),
    path("rejectedapp", views.rejectedapp,
         name="rejectedapp"),

    path("setting", views.setting,
         name="setting"),

]
