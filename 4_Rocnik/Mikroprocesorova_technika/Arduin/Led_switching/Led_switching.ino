const int button = 0;
int i = 1; // pamatuj si mimo loop()

void setup() {
  pinMode(button, INPUT_PULLUP); // tlačítko na GND
  for (int p = 1; p <= 5; p++) pinMode(p, OUTPUT);
}

void loop() {
  static bool lastState = HIGH;
  bool now = digitalRead(button);

  if (lastState == HIGH && now == LOW) { // stisk tlačítka
    digitalWrite(i, LOW); // vypni starý pin
    i++;
    if (i > 5) i = 1;
    digitalWrite(i, HIGH); // zapni nový pin
    delay(200); // jednoduchý debounce
  }
  lastState = now;
}

/*
Zapojení
+ LED diody jsou piny 1-5
- LED diody jsou všechny na GND s 1Kohm rezistorem
Tlačítko je zapojené na samotné GND a pin 0
GND -----------------┬- 1Kohm R -┐
PIN 0 --- Tlačítko --┘           |
PIN 1 --- LED1 ------------------┤
PIN 2 --- LED2 ------------------┤
PIN 3 --- LED3 ------------------┤
PIN 4 --- LED4 ------------------┤
PIN 5 --- LED5 ------------------┘
*/
