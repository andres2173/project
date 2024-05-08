# # Establece la imagen base a Python 3.10-slim
# FROM python:3.10-slim

# # Establece el directorio de trabajo en el contenedor
# WORKDIR /app

# # Copia el archivo requirements.txt del directorio raíz al directorio de trabajo
# COPY requirements.txt .

# # Instala las dependencias
# RUN pip install --no-cache-dir -r requirements.txt

# # Copia el directorio src en el directorio de trabajo del contenedor
# COPY src/ .

# # Informa al Docker que el contenedor escucha en el puerto 4000
# EXPOSE 4000

# # Comando para ejecutar la aplicación
# CMD ["python", "src/app.py"]


#####
FROM python:3.8-slim-buster

WORKDIR /apphtmlpuerto

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY src/ .
EXPOSE 4000


CMD ["flask", "run", "--host=0.0.0.0", "--port=4000"]
