from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager, PermissionsMixin

# Manager for the custom user model
class UserManager(BaseUserManager):
    def create_user(self, username, email, password=None, **extra_fields):
        if not email:
            raise ValueError('The Email field must be set')
        email = self.normalize_email(email)
        user = self.model(username=username, email=email, **extra_fields)
        user.set_password(password)  # Encrypt the password
        user.save(using=self._db)
        return user

    def create_superuser(self, username, email, password=None, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)
        extra_fields.setdefault('is_active', True)  # Ensure the superuser is active
        
        if extra_fields.get('is_staff') is not True:
            raise ValueError('Superuser must have is_staff=True.')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('Superuser must have is_superuser=True.')

        return self.create_user(username, email, password, **extra_fields)

# Custom User model
class User(AbstractBaseUser, PermissionsMixin):
    username = models.CharField(max_length=16, unique=True)
    email = models.EmailField(max_length=255, unique=True)
    name = models.CharField(max_length=45)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email']

    objects = UserManager()

    def __str__(self):
        return self.username

# TipoBodega model
class TipoBodega(models.Model):
    tipo = models.CharField(max_length=255)
    metros = models.IntegerField()
    quimicos = models.BooleanField()
    organicos = models.BooleanField()
    hermetico = models.BooleanField()
    precio = models.IntegerField()

    def __str__(self):
        return self.tipo

# Bodega model
class Bodega(models.Model):
    codigo = models.CharField(max_length=10)
    tipo_bodega = models.ForeignKey(TipoBodega, on_delete=models.CASCADE)
    disponible = models.BooleanField(default=True)  # Nuevo campo

    def __str__(self):
        return self.codigo

# Noticia model
class Noticia(models.Model):
    titulo = models.CharField(max_length=45)
    cuerpo = models.TextField()
    imagen_url = models.CharField(max_length=255)

    def __str__(self):
        return self.titulo

# Like model
class Like(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    noticia = models.ForeignKey(Noticia, on_delete=models.CASCADE)

    class Meta:
        unique_together = ('user', 'noticia')

    def __str__(self):
        return f"Like by {self.user.username} on {self.noticia.titulo}"
