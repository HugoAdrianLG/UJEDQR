from django.db import models

# Create your models here.
class Usuario_a(models.Model):
    Matricula = models.CharField(max_length=50, unique=True)
    Contraseña = models.CharField(max_length=100)

def __str__(self):
    return self.Matricula
