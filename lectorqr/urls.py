from django.urls import path
from . import views

urlpatterns=[
    path('lectorqr/', views.qr_reader, name='qr_reader'),
]