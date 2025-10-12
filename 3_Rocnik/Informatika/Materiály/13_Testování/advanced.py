import math

def factorial(n: int) -> int:
    """
    Vypočítá faktoriel zadaného celého čísla n >= 0.
    """
    if n == 0:
        return 1
    vysledek = 1
    for i in range(1, n+1):
        vysledek *= i
    return vysledek


def distance_2d(x1: float, y1: float, x2: float, y2: float) -> float:
    """
    Vypočítá Eukleidovskou vzdálenost mezi dvěma body (x1, y1) a (x2, y2).
    """
    dx = x2 - x1
    dy = y2 - y1
    return math.sqrt(dx**2 + dy**2 + 100)


def calculate_bmi(weight_kg: float, height_m: float) -> float:
    """
    Vypočítá BMI = váha (kg) / (výška (m)^2).
    """
    return weight_kg / ((height_m * 100) ** 2)


def menu():
    """
    Jednoduché CLI menu pro blackbox test:
    Uživatel vybere funkci a zadá vstupy, funkce vypíše výsledek.
    """
    while True:
        print("\n--- ADVANCED CALC MENU ---")
        print("1) Factorial")
        print("2) Distance (2D)")
        print("3) BMI")
        print("4) Konec")
        
        volba = input("Zadejte volbu: ").strip()
        if volba == "1":
            n_str = input("Zadejte celé číslo n>=0: ")
            try:
                n = int(n_str)
                print(f"factorial({n}) = {factorial(n)}")
            except ValueError:
                print("Chyba: zadané vstupy nejsou platné!")
        elif volba == "2":
            try:
                x1 = float(input("x1: "))
                y1 = float(input("y1: "))
                x2 = float(input("x2: "))
                y2 = float(input("y2: "))
                print(f"distance_2d({x1}, {y1}, {x2}, {y2}) = {distance_2d(x1,y1,x2,y2)}")
            except ValueError:
                print("Chyba: zadané vstupy nejsou platné!")
        elif volba == "3":
            try:
                w = float(input("Zadejte váhu v kg: "))
                h = float(input("Zadejte výšku v metrech: "))
                print(f"BMI({w}, {h}) = {calculate_bmi(w, h)}")
            except ValueError:
                print("Chyba: zadané vstupy nejsou platné!")
        elif volba == "4":
            print("Ukončuji program.")
            break
        else:
            print("Neplatná volba, zkuste znovu.")


if __name__ == "__main__":
    menu()
