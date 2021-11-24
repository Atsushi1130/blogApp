# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
<<<<<<< HEAD
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(:name => 'あつし', :email => 'atsu.1130.2b@gmail.com', :password => 'semoroti5566', :content => '初期値', :image => '\app\assets\images\default.png')
=======
#   下記を自分のすきな値を入力してください。

  User.create(:name => '名前', :email => ENV['S3_email'], :password => ENV['S3_password'], :content => '自己紹介文', :image => File.open('./app/assets/images/default.png'))
>>>>>>> 6065803a715590ba3678e3971179b28f9e1657f9
