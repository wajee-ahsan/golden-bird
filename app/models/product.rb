class Product < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	belongs_to :user
	has_one :avatar
end
