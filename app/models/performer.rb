class Performer < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :comments, as: :commentable
    has_many :favorites, dependent: :destroy
    has_many :favorite_users, through: :favorites, source: :user
    has_many :favorite_admin_users, through: :favorites, source: :admin_user
end
