class Besteacher < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :admin_user, :optional => true
    has_many :comments, as: :commentable
end
