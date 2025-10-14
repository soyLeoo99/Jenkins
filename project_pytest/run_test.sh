#! bin/bash

echo "Ingresando al proyecto"
cd proyect_pytest 

echo "Activando entorno virtual"
source venv/bin/activate

echo "Instalando dependencias"
pip install -r requirements.txt

echo "Pruebas con pytest"
pytest tests/ --junitxml=reports/test-results.xml --html=reports/test-results.html

echo "Pruebas Finalizadas, reultados en reports"