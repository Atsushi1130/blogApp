# README


## Ruby version
ruby 2.6.8

rails 6.1.4.1

## 起動方法
` git clone  https://github.com/Atsushi1130/blogApp blogApp`

` cd  blogApp `

* /config/environments/development.rbの79行目からのmailerの設定変更

ex) gmailの場合

user_nameを自分のメールアドレスに変更

passwordにgmailのパスワードを入力

* /app/db/seeds.rbにユーザの初期値設定

コメントアウトを外して好きな値を入力してください。


` rails db:migrate `

` rails db:seed `

` rails s `


* 上で決定した初期値でログイン可能、記事の投稿やプロフィール変更などを行える

## その他
私はherokuの環境変数を用いて初期ユーザの設定を行っています。
