class Book < ApplicationRecord
	mount_uploader :picture, AvatarUploader
	mount_uploader :url, AvatarUploader
end
