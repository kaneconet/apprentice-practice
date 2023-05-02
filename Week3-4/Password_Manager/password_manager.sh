#!/bin/bash
echo "パスワードマネージャーへようこそ！"
input=""
# あなたのGPGキーのメールアドレス
gpg_email="yourmail@example.com"
# Exitが入力されない限りループを実行
while [ "$input" != "Exit" ]
do
  read -p "次の選択肢から入力してください(Add Password/Get Password/Exit)：" input
  if [ "$input" == "Add Password" ]; then # 新規パスワード登録
    read -p "サービス名を入力してください：" service_name
    read -p "ユーザー名を入力してください：" user_name
    read -p "パスワードを入力してください：" password
    # デコードしたデータを一時ファイルに保存
    gpg -d password.gpg > password.txt 2> /dev/null
    echo "$service_name:$user_name:$password" >> password.txt
    # 入力ファイルを暗号化して出力ファイルに保存する
    gpg -r $gpg_email -e -o password.gpg password.txt
    # 一時ファイルを削除
    rm password.txt
    echo "パスワードの追加は成功しました"
  elif [ "$input" == "Get Password" ]; then #パスワード検索して表示
    read -p "サービス名を入力してください：" service_name
    # デコードしたデータを一時ファイルに保存
    gpg -d password.gpg > password.txt 2> /dev/null
    # service_nameと完全一致する行をpassword.txtから検索して代入
    search_result=$(grep -w "$service_name" password.txt)
    if [ $? -eq 0 ]; then # サービス名が保存されていた場合
      # IFS（Internal Field Separator）を使用して文字列を : で分割し、配列に格納
      IFS=: read -ra result_array <<< "$search_result"
      echo "サービス名: ${result_array[0]}"
      echo "ユーザー名: ${result_array[1]}"
      echo "パスワード: ${result_array[2]}"
    else # サービス名が保存されていなかった場合
      echo "そのサービスは登録されていません。"
    fi
    # 一時ファイルを削除
    rm password.txt
  elif [ "$input" == "Exit" ]; then # パスワードマネージャーを終了する
    break
  else # 例外入力があった場合
    echo "入力を間違えています。Add Password/Get Password/Exit から入力してください。"
  fi
done

echo "Thank you!"
