from django.urls import path
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    path("signup", views.signup, name="signup"),
    path("signin", views.signin, name="signin"),
    path("logout", views.logoutUser, name="logout"),
    path("signupadmin", views.signupadmin, name="signupadmin"),
    path("updateProfile/<str:pk>", views.updateProfile, name="updateProfile"),

    path('activate-user/<uidb64>/<token>',
         views.activate_user, name='activate'),

    path('activate-sucess', views.activate_sucess, name='activate-sucess'),

    path('activate_email_page', views.activate_email_page,
         name='activate_email_page'),

    # path("success/<str:pk>", views.success, name="success"),

    path('password_change/done/', auth_views.PasswordChangeDoneView.as_view(template_name='password_reset/password_change_done.html'),
         name='password_change_done'),

    path('password_change/', auth_views.PasswordChangeView.as_view(template_name='password_reset/password_change.html'),
         name='password_change'),

    path('password_reset/done/', auth_views.PasswordResetCompleteView.as_view(template_name='password_reset/password_reset_done.html'),
         name='password_reset_done'),

    path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(),
         name='password_reset_confirm'),
    path('password_reset/', auth_views.PasswordResetView.as_view(),
         name='password_reset'),

    path('reset/done/', auth_views.PasswordResetCompleteView.as_view(template_name='password_reset/password_reset_complete.html'),
         name='password_reset_complete'),
]
