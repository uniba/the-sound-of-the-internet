#include <SimpleMessageSystem.h>
#include <SoftwareSerial.h>

SoftwareSerial mySerial(2, 3);

// マスター側の音数
#define NUM_NOTES_MASTER 12
// スレーブ側の音数
#define NUM_NOTES_SLAVE 8

// マスター側の音階
#define KEY_F1  0x41
#define KEY_G1  0x43
#define KEY_A1  0x45
#define KEY_B1  0x47
#define KEY_C2  0x48
#define KEY_D2  0x4A
#define KEY_E2  0x4C
#define KEY_F2  0x4D
#define KEY_G2  0x50
#define KEY_A2  0x52
#define KEY_B2  0x54
#define KEY_C3  0x55

// スレーブ側の音階
#define KEY_FS1 0x42
#define KEY_GS1 0x44
#define KEY_AS1 0x46
#define KEY_CS2 0x49
#define KEY_DS2 0x4B
#define KEY_FS2 0x4E
#define KEY_GS2 0x51
#define KEY_AS2 0x53


char masterPins[] = { 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, A0, A1 };


void setup() {
  for (int i = 0; i < NUM_NOTES_MASTER; ++i) {
    pinMode(masterPins[i], OUTPUT);
    digitalWrite(masterPins[i], LOW);
  }
  
  Serial.begin(115200);
  mySerial.begin(9600);
  
  delay(1000);
}

void loop() {
  if (0 < Serial.available()) {
    char noteNumber = Serial.read();
    char targetPin = -1;
    
    if (KEY_FS1 == noteNumber || KEY_GS1 == noteNumber || KEY_AS1 == noteNumber || KEY_CS2 == noteNumber ||
        KEY_DS2 == noteNumber || KEY_FS2 == noteNumber || KEY_GS2 == noteNumber || KEY_AS2 == noteNumber) {
      forwardToSlave(noteNumber);
    } else {
      switch (noteNumber) {
        case KEY_F1:
          targetPin = masterPins[0];
          break;
        case KEY_G1:
          targetPin = masterPins[1];
          break;
        case KEY_A1:
          targetPin = masterPins[2];
          break;
        case KEY_B1:
          targetPin = masterPins[3];
          break;
        case KEY_C2:
          targetPin = masterPins[4];
          break;
        case KEY_D2:
          targetPin = masterPins[5];
          break;
        case KEY_E2:
          targetPin = masterPins[6];
          break;
        case KEY_F2:
          targetPin = masterPins[7];
          break;
        case KEY_G2:
          targetPin = masterPins[8];
          break;
        case KEY_A2:
          targetPin = masterPins[9];
          break;
        case KEY_B2:
          targetPin = masterPins[10];
          break;
        case KEY_C3:
          targetPin = masterPins[11];
          break;
        default:
          targetPin = -1;
          break;
      }
      
      if (0 < targetPin) {
        digitalWrite(targetPin, HIGH);
        delay(20);
        digitalWrite(targetPin, LOW);
      }
    }
    
    
  }
}

void forwardToSlave(const char note)
{
  if (note) {
    mySerial.write('s');
    mySerial.write(note);
  }
}
