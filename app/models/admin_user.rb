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
  
  has_many :publications
  has_many :publications, foreign_key: "provider_id"
  has_many :publications, source: :admin_user
  
  has_many :performers
  has_many :performers, foreign_key: "provider_id"
  has_many :performers, source: :admin_user
  
  has_many :teachers
  has_many :teachers, foreign_key: "provider_id"
  has_many :teachers, source: :admin_user
  
  has_many :staffs
  has_many :staffs, foreign_key: "provider_id"
  has_many :staffs, source: :admin_user
  
  has_many :articles
  has_many :articles, foreign_key: "provider_id"
  has_many :articles, source: :admin_user
  
  has_many :staffs
  has_many :staffs, foreign_key: "provider_id"
  has_many :staffs, source: :admin_user
  
  has_many :primaries
  has_many :primaries, foreign_key: "provider_id"
  has_many :primaries, source: :admin_user
  
  
  has_many :favorites, dependent: :destroy
  has_many :favorite_admin_users, through: :favorites, source: :admin_user
  
end
