from django.urls import path
from . import views

urlpatterns = [
    path("dashboard", views.dashboard, name="dashboard"),
    path("adminUsers", views.adminUsers, name="adminUsers"),
    path("applicantmanagement", views.applicantManagement,
         name="applicantmanagement"),
    path("applicantstatus", views.applicantStatus, name="applicantstatus"),
    path("calendar", views.Calendar, name="calendar"),

]
