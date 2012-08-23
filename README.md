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

emobileのルータに接続してきたユーザの通信をプロキシします。

### 環境構築手順

1. MacBookProでインターネット共有(The Sound of the Internet)を有効にします
2. Wi-FiのDNSを自分自身(127.0.0.1)にします
3. アプリケーションディレクトリ(~/app/soi}に移動します
4. `sudo node server/app.rb`でプロキシサーバを立ち上げます（`cap deploy:start`でもOK）
5. `sudo ruby server/dns.rb`でDNSサーバを立ち上げます（rbenvで入れたrubyのパスがcapistranoでうまく取れなかったので、実機で直接起動して下さい）
6. 適当なデバイスをemobileのアクセスポイントに接続し、無限インターネット
7. 音楽が鳴れば成功

### その他留意事項

* プロキシサーバは`cap deploy:start`, `cap deploy:stop`, `cap deploy:restart`を利用してリモートから操作できます
* capistranoのコマンドを使用した場合は[forever](https://github.com/nodejitsu/forever)を通じてプロセスが立ち上がります
* `sudo forever list`で実行プロセスの一覧を`sudo forever stopall`でプロセスを停止することができます
* DNSのキャッシュが残っていたり、インターネット共有がうまくいかなかったりで不具合がでる場合はMacBookProを再起動してみて下さい

### OSCへ送信するデータの形式

localhostの8000番にデータを送信します。

リクエスト時は`/out, <hostname>, <path>`が、レスポンス時は`/in, <status code>, <content-type>, <content-length>`が送信されます。
