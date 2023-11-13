from django.urls import path
from . import views


urlpatterns=[
    path('qr/<int:alumnos_id>', views.mostrarcodigo, name='qr'),
]