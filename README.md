# The Sound of the Internet

## Arduinoについて
---
Arduinoフォルダに、以下のフォルダがあります。  
  
**/the_sound_of_the_internet_master**  
**/the_sound_of_the_internet_slave**  
  
~masterは Arduino UNO 用のプログラムです。  
~slaveは Arduino Pro Mini 用のプログラムです。  
Arduino IDE で正しいデバイスとポートを選択し、それぞれインストールしてください。  

#### プロトコル
MIDIノートナンバーの **65〜85** が **F3〜C5** に対応しています。  
シリアル経由で上記の数字を送信すると対応するノートを発音します。