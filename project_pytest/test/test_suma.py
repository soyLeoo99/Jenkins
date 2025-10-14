import pytest

def suma(a, b):
    # Función que suma dos numeros.
    return a + b

def test_suma():
    assert suma(2, 3) == 5
    assert suma(-1, 1) == 0
    assert suma(0, 0) == 0
    
def test_suma_error():
    assert suma(1, 2) == 4