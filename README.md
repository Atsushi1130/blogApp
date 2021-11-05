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
ex: ` User.create(:name=>'***', :email=>'***@mail', :password=>'***',:content=>'***',:image=>'\assets\images\default.png') `


` rails db:migrate `

` rails db:seed `

` rails s `


* 上で決定した初期値でログイン可能、記事の投稿やプロフィール変更などを行える

## その他
メールの自動送信機能が組み込まれているため、私のg-mailのパスワードなどを記載する必要があったので、本番環境はprivateリポジトリにある。
