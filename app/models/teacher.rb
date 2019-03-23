class Teacher < ApplicationRecord
   mount_uploader :image, ImageUploader
    has_many :comment2s, dependent: :destroy
end
