# インターネットTV
好きな時間に好きな場所で話題の動画を無料で楽しめる「インターネットTVサービス」のデータベース設計と分析

## 仕様
- ドラマ1、ドラマ2、アニメ1、アニメ2、スポーツ、ペットなど、複数のチャンネルがある
- 各チャンネルの下では時間帯ごとに番組枠が1つ設定されており、番組が放映される
- 番組はシリーズになっているものと単発ものがある。シリーズになっているものはシーズンが1つものと、シーズン1、シーズン2のように複数シーズンのものがある。各シーズンの下では各エピソードが設定されている
- 再放送もあるため、ある番組が複数チャンネルの異なる番組枠で放映されることはある
- 番組の情報として、タイトル、番組詳細、ジャンルが画面上に表示される
- 各エピソードの情報として、シーズン数、エピソード数、タイトル、エピソード詳細、動画時間、公開日、視聴数が画面上に表示される。単発のエピソードの場合はシーズン数、エピソード数は表示されない
- ジャンルとしてアニメ、映画、ドラマ、ニュースなどがある。各番組は1つ以上のジャンルに属する
- KPIとして、チャンネルの番組枠のエピソードごとに視聴数を記録する。なお、一つのエピソードは複数の異なるチャンネル及び番組枠で放送されることがあるので、属するチャンネルの番組枠ごとに視聴数がどうだったかも追えるようにする

## データベース設計
データベース設計は[Internet_tv.puml](https://github.com/kaneconet/apprentice-practice/blob/main/Week5-6/Internet_TV/internet_tv.puml)にて確認できます。
これをもとに出力したER図は[internet_tv.png](https://github.com/kaneconet/apprentice-practice/blob/main/Week5-6/Internet_TV/internet_tv.png)です。

## テーブル構築
テーブル構築の手順は[INTERNET_TV.md](https://github.com/kaneconet/apprentice-practice/blob/main/Week5-6/Internet_TV/INTERNET_TV.md)にて確認できます。

## データ抽出
データ抽出用のSQLスクリプトは[analyze.sql](https://github.com/kaneconet/apprentice-practice/blob/main/Week5-6/Internet_TV/analyze.sql)にまとめてあります。
