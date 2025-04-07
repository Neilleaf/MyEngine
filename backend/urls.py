"""
URL configuration for backend project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from main import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('', views.index, name='index'),
    path('signup/', views.signup, name='signup'),
    path('logout/', views.logout, name='logout'),
    path('indexafter/', views.indexafter, name='indexafter'),
    path('profile/', views.profile, name='profile'),
    path('login/', views.login, name='login'),
    path('signupinit/', views.signupinit, name='signupinit'),
    path('success/', views.success, name='success'),
    path('genreafter/', views.genre_games, name='genreafter'),
    path('allgamesafter/', views.all_games, name='allgamesafter'),
    path('homeafter/', views.home_games, name='homeafter'),
    path('cantfind/', views.cantfind, name='cantfind'),  
    path('game_deets/<str:title>/', views.game_deets, name='game_deets'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
