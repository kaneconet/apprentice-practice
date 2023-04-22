# 1. パッケージ管理ツール

## インストール
gem install rails

## アンインストール
gem uninstall rails

## インストール済みgemの一覧を確認する
gem list

> 参考にしたサイト
> https://magazine.techacademy.jp/magazine/21213


# 2. パッケージの依存関係管理ツール

## bundlerとは
gemの依存関係とバージョンを管理するためのツール。
複数人での開発やgemのバージョンが上がったときにエラーを起こさず開発できる。

## Bundler を用いて、任意の gem を1つインストール

Gemfileに以下のように入力
```
source 'https://rubygems.org'

gem 'sinatra'
```

以下のコマンドを実行
bundle install
