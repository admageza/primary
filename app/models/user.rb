class User < ApplicationRecord
  
  mount_uploader :image, ImageUploader
  
  has_many :favorites, dependent: :destroy
  has_many :favorite_admin_users, through: :favorites, source: :admin_user
  
  has_many :active_relationships, foreign_key: 'follower_id', class_name: 'Relationship', dependent: :destroy
  has_many :passive_relationships, foreign_key: 'followed_id', class_name: 'Relationship', dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  
  def follow!(other_user)
    active_relationships.create!(followed_id: other_user.id)
  end

   # Check whether you are following
  def following?(other_user)
    active_relationships.find_by(followed_id: other_user.id)
  end
  
   #Cancel follow of the specified user
  def unfollow!(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end
 
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_save { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  
end
