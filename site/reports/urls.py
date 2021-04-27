from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='reports-home'),
    path('report/', views.report, name='reports-page'),
]