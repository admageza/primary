class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
         
  
  has_many :posts, foreign_key: "provider_id"
  
  has_many :publications, foreign_key: "provider_id"
  
  has_many :performers, foreign_key: "provider_id"
  
  has_many :teachers, foreign_key: "provider_id"
  
  has_many :besteachers, foreign_key: "provider_id"
  
  has_many :staffs, foreign_key: "provider_id"
  
  has_many :articles, foreign_key: "provider_id"
 
  has_many :staffs, foreign_key: "provider_id"
  
  has_many :primaries, foreign_key: "provider_id"
  
  has_many :nurseries, foreign_key: "provider_id"
  
  has_many :favorites, dependent: :destroy
  has_many :favorite_admin_users, through: :favorites, source: :admin_user
  
end
