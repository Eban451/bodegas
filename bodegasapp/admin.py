from django.contrib import admin
from .models import User, Bodega, TipoBodega, Noticia, Like

# Registro del modelo User
@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display = ('username', 'email', 'name', 'is_staff', 'is_superuser')
    search_fields = ('username', 'email')
    readonly_fields = ('password',)  # Mostrar solo lectura para el campo password

# Registro del modelo Bodega
@admin.register(Bodega)
class BodegaAdmin(admin.ModelAdmin):
    list_display = ('codigo', 'tipo_bodega')
    search_fields = ('codigo',)

# Registro del modelo TipoBodega
@admin.register(TipoBodega)
class TipoBodegaAdmin(admin.ModelAdmin):
    list_display = ('tipo', 'metros', 'precio')
    search_fields = ('tipo',)

# Registro del modelo Noticia
@admin.register(Noticia)
class NoticiaAdmin(admin.ModelAdmin):
    list_display = ('titulo', 'cuerpo')
    search_fields = ('titulo',)

# Registro del modelo Like
@admin.register(Like)
class LikeAdmin(admin.ModelAdmin):
    list_display = ('user', 'noticia')
    search_fields = ('user__username', 'noticia__titulo')
