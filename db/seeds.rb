# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#   下記を自分のすきな値を入力してください。

  User.create(:name => '名前', :email => ENV['S3_email'], :password => ENV['S3_password'], :content => '自己紹介文', :image => File.open('./app/assets/images/default.png'))
