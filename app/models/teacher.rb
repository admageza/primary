class Teacher < ApplicationRecord
   mount_uploader :image, ImageUploader
    has_many :comments, dependent: :destroy
end
