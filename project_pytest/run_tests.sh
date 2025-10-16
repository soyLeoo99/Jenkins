#!/bin/bash

echo "Iniciando Pruebas en Jenkins..."

# Verificar si el entono virtual existe
if [ ! -d "venv" ]; then
    echo "Entorno virtual no encontrado, Creándolo..." 
    apt install python3.11-venv
fi

# Activar el entorno virtual correctamente
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
elif [ -f "venv/Scripts/activate" ]; then # Para Windows 
    source venv/Scripts/activate
else 
    echo "Error: No se pudo activar el entorno virtual..."
    exit 1
fi

# Verificar si "pip" está instalado correctamente
echo "Instalando dependencias"
pip install --upgrade pip --break-system-packages
pip install -r requirements.txt --break-system-packages

# Ejecutar las pruebas y generar reportes
echo " 🛠️ Pruebas con pytest"
venv/bin/python -m pytest tests/ --junitxml=reports/junit.xml --html=reports/report.html --self-contained-html

echo "Pruebas Finalizadas, reultados en reports"
