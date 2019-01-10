class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
         
  # has_many :active_relationships, foreign_key: 'follower_id', class_name: 'Relationship', dependent: :destroy
  # has_many :passive_relationships, foreign_key: 'followed_id', class_name: 'Relationship', dependent: :destroy
  
  has_many :posts
  has_many :posts, foreign_key: "provider_id"
  has_many :posts, source: :admin_user
  
  has_many :articles
  has_many :articles, foreign_key: "provider_id"
  has_many :articles, source: :admin_user
  
  has_many :staffs
  has_many :staffs, foreign_key: "provider_id"
  has_many :staffs, source: :admin_user
  
  has_many :favorites, dependent: :destroy
  
end
