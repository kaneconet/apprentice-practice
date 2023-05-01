#!/bin/bash
echo "パスワードマネージャーへようこそ！"
read -p "サービス名を入力してください：" service_name
read -p "ユーザー名を入力してください：" user_name
read -p "パスワードを入力してください：" password
echo "Thank you!"
# 入力された情報をpassword.txtに追加
echo "$service_name:$user_name:$password" >> password.txt
