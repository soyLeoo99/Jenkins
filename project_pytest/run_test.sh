#! bin/bash

echo "Activando entorno virtual"
if[!"-d venv" ]; then
    pytohn 3 -m venv venv
fi
source venv/bin/activate

echo "Instalando dependencias"
pip install --upgrade pip
pip install -r requirements.txt

echo "Pruebas con pytest"
pytest tests/ --junitxml=reports/test-results.xml --html=reports/test-results.html

echo "Pruebas Finalizadas, reultados en reports"