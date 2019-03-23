class Besteacher < ApplicationRecord
    mount_uploader :image, ImageUploader
     has_many :comment7s, dependent: :destroy
end
