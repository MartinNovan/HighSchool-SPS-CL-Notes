int mode = 0;
const int input = 2;
const int led_red = 3;
const int led_yellow = 4;
const int led_green = 5;

void setup() {
  // put your setup code here, to run once:
  pinMode(input, INPUT);
  pinMode(led_red, OUTPUT);
  pinMode(led_yellow, OUTPUT);
  pinMode(led_green, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  int laststate = digitalRead(input);
  Serial.println(laststate);
  if (laststate == HIGH){
    UpdateMode();
  }
  switch (mode) {
    case 0:
      Reset_led();
      break;
    case 1:
      Set_Static();
      break;
    case 2:
      Set_Blink();
      break;
    case 3:
      Set_Chain();
      break;
    default:
      Reset_led();
      break;
  }
}

void UpdateMode() {
  delay(250);
  if (mode == 3) { 
    mode = 0;
  } else {
    mode++;
  }
}


void Reset_led(){
  digitalWrite(led_red, LOW);
  digitalWrite(led_yellow, LOW);
  digitalWrite(led_green, LOW);
}

void Set_Static(){
  digitalWrite(led_red, HIGH);
  digitalWrite(led_yellow, HIGH);
  digitalWrite(led_green, HIGH);
}

void Set_Blink() {
  static unsigned long lastToggle = 0;
  static bool ledState = LOW;

  if (millis() - lastToggle > 500) {
    lastToggle = millis();
    ledState = !ledState;

    digitalWrite(led_red, ledState);
    digitalWrite(led_yellow, ledState);
    digitalWrite(led_green, ledState);
  }
}


void Set_Chain() {
  static unsigned long lastStep = 0;
  static int step = 0;

  if (millis() - lastStep > 500) {
    lastStep = millis();
    Reset_led();
    switch(step) {
      case 0: digitalWrite(led_red, HIGH); break;
      case 1: digitalWrite(led_yellow, HIGH); break;
      case 2: digitalWrite(led_green, HIGH); break;
    }
    step++;
    if (step > 2) step = 0;
  }
}
