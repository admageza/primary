class Teacher < ApplicationRecord
   mount_uploader :image, ImageUploader
   has_many :comments, as: :commentable
end
