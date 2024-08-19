from django.urls import path
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    path('', views.home, name='index'),
    path('login/', auth_views.LoginView.as_view(template_name='registration/login.html'), name='login'),
    path('logout/', auth_views.LogoutView.as_view(next_page='index'), name='logout'),
    path('register/', views.register, name='register'),
    path('cotizar/', views.cotizar, name='cotizar'),
    path('like/<int:noticia_id>/', views.like_noticia, name='like_noticia'),
    path('cotizar/', views.cotizar, name='cotizar'),
    path('resultado_cotizacion/', views.resultado_cotizacion, name='resultado_cotizacion'),
# Otras rutas aquí
]
