import cv2
from django.shortcuts import render



# Create your views here.

def qr_reader(request):
    camera = cv2.VideoCapture(0)  # Acceder a la cámara (cambia el índice según tu configuración)
    while True:
            ret, frame = camera.read()  # Captura un fotograma de la cámara
            if not ret:
                continue
            detector = cv2.QRCodeDetector()
            data, vertices_array, _ = detector.detectAndDecode(frame)
            if data:
                return render(request, 'lectorqr/qr_reader.html', {'qr_data': data})
    camera.release()


"""def qrlocal(request):
    if request.Method == 'POST':
        latitude = request.POST.get('latitude')
        longitude = request.POST.get('longitude')
        
        allowed = {'latitude': 24.025379964055592, 'longitude': -104.55395929804817}

        if (abs(float(latitude) - allowed['latitude']) <0.01 and 
            abs (float(longitude)-allowed['longitude']) < 0.01):
            return render(request, 'lectorqr/qr_reader.html')
        """

