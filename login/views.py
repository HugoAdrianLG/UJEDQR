from django.shortcuts import render, redirect
from django.contrib.auth.forms import AuthenticationForm
from .models import Usuario_a
from django.db import connection


# Create your views here.
def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
    
        with connection.cursor() as cursor:
            cursor.execute(
                "Select * From alumnos Where Matricula = %s AND Contraseña = %s",
                [username, password]
            )
            Usuario_a = cursor.fetchone

        if Usuario_a:
            request.session['usuario verificado']=True
            return redirect('/qr/qrgenerator.html')
        else: 
            error_message ='Credenciales incorrectas'
            return render (request, 'login.html',{'error_message': error_message})
    return render (request, 'login.html', {
        'form': AuthenticationForm
    })

def home(request):
    return render(request, 'home.html')


