class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    # belongs_to :admin_user, :optional => true
    has_many :comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
    # has_many :favorite_users, through: :favorites, source: :user
    has_many :favorite_admin_users, through: :favorites, source: :admin_user
end
