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

## プロキシサーバについて

### 構築手順

1. MacBookProでインターネット共有(The Sound of the Internet)を有効にします
2. Wi-FiのDNSを自分自身(127.0.0.1)にします
3. アプリケーションディレクトリ(~/app/soi}に移動します
4. `sudo ruby server/dns.rb`でDNSサーバを立ち上げます
5. `sudo node server/app.rb`でプロキシサーバを立ち上げます（`cap deploy:start`でもOK）
6. 適当なデバイスからxxに接続し、無限インターネット
7. 音楽が鳴れば成功だよ

`cap deploy:start`, `cap deploy:stop`, `cap deploy:restart`などを利用して、リモートからプロセスの管理をすることもできます。
