class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :favorite_users, through: :favorites, source: :user
    scope :favorited_by, -> (name) { joins(:favorites).where(favorites: { user: User.where(name: name) }) }
    has_many :favorite_admin_users, through: :favorites, source: :admin_user
end
