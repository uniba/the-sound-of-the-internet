#include <SoftwareSerial.h>

SoftwareSerial mySerial(2, 3);

#define NUM_NOTES_SLAVE 8

#define KEY_FS1 0x42
#define KEY_GS1 0x44
#define KEY_AS1 0x46
#define KEY_CS2 0x49
#define KEY_DS2 0x4B
#define KEY_FS2 0x4E
#define KEY_GS2 0x50
#define KEY_AS2 0x52

char slavePins[] = { 4, 5, 6, 7, 8, 9, 10, 11 };


void setup()
{
  for (int i = 0; i < NUM_NOTES_SLAVE; ++i) {
    pinMode(slavePins[i], OUTPUT);
    digitalWrite(slavePins[i], LOW);
  }
  
  Serial.begin(115200);
  mySerial.begin(9600);
  
  delay(1000);
  
  mySerial.print("OK");
}

void loop()
{
  if (0 < mySerial.available()) {
    // char startByte = mySerial.read();
    
    if (true) {
      char noteNumber = mySerial.read();
      char targetPin = -1;
      
      Serial.print("note: ");
      Serial.println(noteNumber);
//      digitalWrite(slavePins[0], HIGH);
//      delay(20);
//      digitalWrite(slavePins[0], LOW);
      
      switch (noteNumber) {
        case KEY_FS1:
          targetPin = slavePins[0];
          break;
        case KEY_GS1:
          targetPin = slavePins[1];
          break;
        case KEY_AS1:
          targetPin = slavePins[2];
          break;
        case KEY_CS2:
          targetPin = slavePins[3];
          break;
        case KEY_DS2:
          targetPin = slavePins[4];
          break;
        case KEY_FS2:
          targetPin = slavePins[5];
          break;
        case KEY_GS2:
          targetPin = slavePins[6];
          break;
        case KEY_AS2:
          targetPin = slavePins[7];
          break;
        default:
          targetPin = -1;
          break;
      }
      
      digitalWrite(targetPin, HIGH);
      delay(20);
      digitalWrite(targetPin, LOW);
      //mySerial.flush();
      
      if (0 < targetPin/* && 'e' == mySerial.read() */) {
//        digitalWrite(targetPin, HIGH);
//        delay(20);
//        digitalWrite(targetPin, LOW);
//        mySerial.flush();
      }
    }
  }
}
