class Picture < ApplicationRecord
	belongs_to :imageable, polymorphic: true
	mount_uploader :soft_pic, SoftPicUploader
end
