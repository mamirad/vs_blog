class BlogPost < ApplicationRecord
  belongs_to :user
  has_many :blog_comments
  has_many :pictures, as: :imageable
  # mount_uploader :soft_pic, SoftPicUploader
  # accepts_nested_attributes_for :pictures
end
