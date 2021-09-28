from django.urls import path
from . import views

urlpatterns = [
    path("dashboard/", views.dashboard, name="dashboard"),

    path("adminUsers/", views.adminUsers, name="adminUsers"),
    path("adminUsers/activate/<int:pk>/",
         views.staffActivate, name="adminUsersActivate"),
    path("adminUsers/deactivate/<int:pk>/",
         views.staffDeactivate, name="adminUsersDeactivate"),

    path("adminUsers/position/<int:pk1>/",
         views.staffPosition, name="adminUsersPosition"),
    path("adminUsers/position/<int:pk1>/<str:pk2>/",
         views.staffPosition, name="adminUsersPosition"),

    path("adminUsersExport",
         views.exportStaffs, name="adminUsersExport"),

    path("applicantmanagement/", views.applicantManagement,
         name="applicantmanagement"),

    path("applicantmanagement/<int:pk>/", views.applicantManagement,
         name="applicantmanagement"),


    path("resumePrev/<str:pk>/", views.ResumePreview, name="resumePrev"),

    path("onboarding/", views.onboarding,
         name="onboarding"),
    path("onboarding/<int:pk>/", views.onboarding,
         name="onboarding"),

    path("rejectedapp/", views.rejectedapp,
         name="rejectedapp"),

    path("messages/", views.messagespage,
         name="messages"),
    path("messages/<int:pk>/", views.messagespage,
         name="messages"),
    path("messagesExport/",
         views.exportMessages, name="messagesExport"),

    path("clientExport/<int:pk>/",
         views.exportClient, name="clientExport"),


    path("department/", views.department,
         name="department"),

    path("department/<int:pk>/", views.department,
         name="department"),

    path("departmentExport/",
         views.exportRequest, name="departmentExport"),
    #     path("addscore/<int:pk>", views.addScore, name="addscore"),

]
