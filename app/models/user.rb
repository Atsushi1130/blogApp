class User < ApplicationRecord
	mount_uploader :image,ImageUploader
	validates :content, {presence: true, length: {maximum: 70}}
	validates :image, {presence: true}
	validates :name, {presence: true}
	validates :email, {presence: true}
	validates :password, {presence: true}
end
