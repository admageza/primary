class Maternaire < ApplicationRecord
    mount_uploader :image, ImageUploader
     has_many :comment5s, dependent: :destroy
    # belongs_to :admin_user, :optional => true
end
