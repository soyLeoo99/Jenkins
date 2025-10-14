import pytest

def multiplicacion(a, b): 
    # Función que multplica dos numeros.
    return a * b 

def test_multiplicacion():
    assert multiplicacion(2, 3) == 6
    assert multiplicacion(1, 5) == 5
    assert multiplicacion(0, 10) == 0