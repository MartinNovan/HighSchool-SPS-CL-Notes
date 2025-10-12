import pytest
import math
from advanced import factorial, distance_2d, calculate_bmi

def test_factorial_positive():
    assert factorial(5) == 120, "Faktoriál 5 by měl být 120"
    assert factorial(1) == 1,   "Faktoriál 1 by měl být 1"

def test_factorial_zero():
    assert factorial(0) == 1, "Faktoriál 0 by měl být 1"

def test_factorial_negative():
    with pytest.raises(ValueError):
        factorial(-3)

def test_distance_2d():
    # Skutečná vzdálenost mezi (0,0) a (3,4) je 5 (3-4-5 trojúhelník).
    d = distance_2d(0,0,3,4)
    assert math.isclose(d, 5, rel_tol=1e-5), f"distance_2d(0,0,3,4) měla být 5, je {d}"

def test_bmi():
    # BMI = kg / (m^2). Např. 70 kg, 1.75 m => 70 / (1.75^2) ~ 22.857
    res = calculate_bmi(70, 1.75)
    assert 22.8 < res < 22.9, f"BMl mělo vyjít kolem 22.86, vyšlo: {res}"
