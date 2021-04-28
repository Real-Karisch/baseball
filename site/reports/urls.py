from django.urls import path
from . import views

urlpatterns = [
    path('', views.search, name='player-search'),
    path('report/', views.report, name='reports-page'),
]