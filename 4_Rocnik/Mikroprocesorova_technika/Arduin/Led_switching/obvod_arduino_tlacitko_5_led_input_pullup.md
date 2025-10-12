# Schéma zapojení — Arduino s tlačítkem a 5 LED (doporučeno: INPUT_PULLUP)

Níže najdeš jednoduchý a spolehlivý obvod, který odpovídá kódu, který jsme řešili. Tlačítko používáme jako připojené k GND a v kódu aktivujeme **interní pull-up** (nejjednodušší a nejbezpečnější řešení).

---

## Komponenty
- Arduino (např. UNO)
- 1× tlačítko (momentary push-button)
- 5× LED
- 5× rezistor pro LED: **330 Ω** (pro ~20 mA u standardní LED)
- propojovací vodiče
- nepovinně: nepájivý kontaktní pole (breadboard)

---

## Piny (doporučené)
- **Tlačítko**: Arduino pin **7** (INPUT_PULLUP)
- **LEDy**: Arduino piny **1, 2, 3, 4, 5** (nebo jiný volný rozsah, pozor na piny 0 a 1 — RX/TX)

> Poznámka: Pokud chceš, vynech dotek piny 0 a 1 (RX/TX). V dokumentaci a příkladech doporučujeme použít 2–6 nebo 7–11.

---

## Zapojení (textově / krokově)
1. **Tlačítko:**
   - Jeden pin tlačítka → Arduino pin **7**.
   - Druhý pin tlačítka → **GND**.
   - V kódu nastav: `pinMode(7, INPUT_PULLUP);` — tím máš interní pull-up, není třeba externího rezistoru.

2. **LEDy:** (opakuj pro každou z 5 LED)
   - Arduino pin (např. `1`) → **rezistor 330 Ω** → **anoda LED** (dlouhá nožička) → katoda LED → **GND**.
   - Takto při `digitalWrite(pin, HIGH)` LED svítí.

3. **Napájení:**
   - Arduino napájej přes USB nebo externí 5 V (dbejte polarity a limitů proudu). LED celkem (5×20 mA) může odebírat až 100 mA + zbytek desky — respektuj napájení.

---

## ASCII schéma (jednoduché)

```
  +5V (Arduino)                 +---[330]---|>|--- GND   (LED na pinu 1)
     USB/5V                       (pin 1)

  Arduino pin 7 ---o [Tlačítko] o--- GND
                (1 kontakt na pinu 7, druhý na GND)

  Arduino pins: 1 -> LED+R -> GND
                2 -> LED+R -> GND
                3 -> LED+R -> GND
                4 -> LED+R -> GND
                5 -> LED+R -> GND
```

---

## Základní poznámky a tipy
- **INPUT_PULLUP**: při tomto zapojení je pin `HIGH` když není stisknuto (tlačítko otevřené), a `LOW` když je stisknuto (tlačítko spojené s GND).
- **Debounce**: Hardwarový odraz tlačítka může způsobit vícenásobné spínání — v kódu použij `delay(50)` nebo lepší softwarový debounce (příklad jsem posílal dříve).
- **PIN 0/1**: Piny 0 a 1 jsou používány pro sériovou komunikaci — NEPOUŽÍVAT pokud používáš Serial nebo chceš spolehlivé chování.
- **Externí pull-down varianta:** pokud chceš tlačítko na +5V (originální schéma), přidej **externí pull-down 100 kΩ** mezi pin a GND a v kódu nech `pinMode(pin, INPUT);`. Nicméně řešení s interním pull-up je praktičtější.
- **Izolace signálu**: pokud ovládáš velké zátěže (relé, 9V, motory), používej tranzistory/MOSFETy a oddělené napájení — nepřipojuj velké proudy přímo na Arduino piny.

---

## Příklad popsaného kódu (stručně)
```cpp
const int buttonPin = 7;
const int outPins[] = {1,2,3,4,5};
int currentIndex = 0;

void setup(){
  pinMode(buttonPin, INPUT_PULLUP);
  for(int i=0;i<5;i++){
    pinMode(outPins[i], OUTPUT);
    digitalWrite(outPins[i], LOW);
  }
  digitalWrite(outPins[currentIndex], HIGH);
}

void loop(){
  static int last = HIGH;
  int r = digitalRead(buttonPin);
  if(last==HIGH && r==LOW){
    digitalWrite(outPins[currentIndex], LOW);
    currentIndex = (currentIndex+1) % 5;
    digitalWrite(outPins[currentIndex], HIGH);
    delay(200); // jednoduchý debounce
  }
  last = r;
}
```

---

Pokud chceš, mohu do dokumentace přidat i **schéma s BC327** (varianta pro ovládání zátěže napájené +9V pomocí PNP jako high-side) nebo upravit piny/rezistory přesně podle tvého hardware. Napiš, kterou variantu chceš, a upravím dokumentaci.

