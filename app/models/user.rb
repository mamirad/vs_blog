class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :post_blogs
   has_many :pictures, as: :imageable
  # mount_uploader :soft_pic, SoftPicUploader

end
