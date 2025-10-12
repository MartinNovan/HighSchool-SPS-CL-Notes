
const int line1_red = 2;
const int line1_orange = 3;
const int line1_green = 4;
const int line2_red = 5;
const int line2_orange = 6;
const int line2_green = 7;

void setup() {
  // put your setup code here, to run once:
  pinMode(line1_red, OUTPUT);
  pinMode(line1_orange, OUTPUT);
  pinMode(line1_green, OUTPUT);
  pinMode(line2_red, OUTPUT);
  pinMode(line2_orange, OUTPUT);
  pinMode(line2_green, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  ChangeLights(1);
  delay(5000);
  ChangeLights(2);
  delay(5000);
}

void ChangeLights(int SetGreenOnLine){
  if(SetGreenOnLine == 1){
    SetRed(line2_red, line2_orange, line2_green);
    delay(2000);
    SetGreen(line1_red, line1_orange, line1_green);
  }
  else{
    SetRed(line1_red, line1_orange, line1_green);
    delay(2000);
    SetGreen(line2_red, line2_orange, line2_green);
  }
}

void SetGreen(int red, int oragne, int green){
  delay(500);
  digitalWrite(oragne, HIGH);
  delay(1000);
  digitalWrite(red, LOW);
  digitalWrite(oragne, LOW);
  digitalWrite(green, HIGH);
}

void SetRed(int red, int oragne, int green){
  delay(500);
  digitalWrite(green, LOW);
  digitalWrite(oragne, HIGH);
  delay(1000);
  digitalWrite(oragne, LOW);
  digitalWrite(red, HIGH);
}
