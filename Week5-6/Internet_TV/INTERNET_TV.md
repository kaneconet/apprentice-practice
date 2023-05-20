# インターネットTVのデータベース構築手順
## 前提条件
今回はDocker上にMySQLのデータベースを構築します。Dockerを事前にインストールしている必要があります。
## 構築手順
### MySQLのイメージのダウンロードとコンテナの起動
以下のコマンドを実行。パスワードは自身で設定してください。
`docker run --name mysql-server -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=internet_tv -p 3306:3306 -d mysql --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci`

このコマンドでコンテナの起動と名前・パスワード・ホストの設定、internet_tvという名前のデータベースの作成、MySQLのイメージのイメージを指定しています。

### データベース作成用のSQLスクリプトをコピー
データベース作成用の`create.sql`をDockerコンテナ内のhomeディレクトリにコピーします。
`docker cp create.sql mysql-server:/home/`

### Dockerをインタラクティブモードで起動
Dockerコンテナをインタラクティブモードで起動し、MySQLクライアントを開きます。
`docker exec -it mysql-server mysql -uroot -p`
パスワードの入力が求められるので入力します。

### 作成したデータベースの確認
データベースが作成できていることを確認。
```
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| internet_tv        |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
```

### SQLファイルの実行
以下のコマンドでDocker上のhomeディレクトリに移動して`create.sql`を実行します。
```
docker exec -it mysql-server bash
cd home
mysql -h localhost -u root -p internet_tv < create.sql
```
### サンプルデータの挿入
ChatGPTで作成したサンプルデータのSQLコード`sample_data.sql`を実行します。
```
docker cp sample_data.sql mysql-server:/home/
docker exec -it mysql-server bash
cd home
mysql -h localhost -u root -p --default-character-set=utf8mb4 internet_tv < sample_data.sql
```
