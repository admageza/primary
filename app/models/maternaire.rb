class Maternaire < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :comments, as: :commentable
    # belongs_to :admin_user, :optional => true
end
