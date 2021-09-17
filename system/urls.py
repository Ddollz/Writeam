from django.urls import path
from . import views

urlpatterns = [

    path("websetting", views.websetting, name="websetting"),
    path("websetting/job/<int:pk>", views.websetting, name="websetting/job"),
    path("websetting/job/edit/<int:pk>",
         views.websetting, name="websetting/job/edit"),

    path("websetting/job/update/<int:pk>",
         views.websetting, name="websetting/job/update"),

]
