from django.shortcuts import render
import pyqrcode
from PIL import Image
from django.db import connection
from io import BytesIO


# Create your views here.
def mostrarcodigo(request, ID):
    alumno = alumno.objects.get(id=ID)

    data=f"Nombre: {alumno.nombre}\nApellido: {alumno.apellido_paterno}\nMatricula: {alumno.matricula}/nCarrera: {alumno.carrera} Semestre: {alumno.semestre}"
    qr=pyqrcode.create(data)
    img = Image.new('RGB',(300,300), 'white')
    img.paste(qr.make_image(fill_color='red', backcolor='white'), (50,50))
    buffer = BytesIO
    img.save (buffer, format="PNG")
    img_data=buffer.getvalue()
    return render  (request, 'qr/qrgenerator.html',{"alumno": alumno, "img_data": img_data})
    


        