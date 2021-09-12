class User < ApplicationRecord
	mount_uploader :image,ImageUploader
end
