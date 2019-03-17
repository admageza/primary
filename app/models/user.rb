class User < ApplicationRecord
  
  mount_uploader :image, ImageUploader
  
  has_many :comments, dependent: :destroy
  
  has_many :admissions
  has_many :admissions, source: :user
  has_many :admissions, dependent: :destroy
  
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  
  has_many :active_favoritings, foreign_key: 'favoriter_id', class_name: 'Favoriting', dependent: :destroy
  has_many :passive_favoritings, foreign_key: 'favorited_id', class_name: 'Favoriting', dependent: :destroy
  has_many :favoriting, through: :active_favoritings, source: :favorited
  has_many :favoriters, through: :passive_favoritings, source: :favoriter
  
  # Favorite specified user
   def favoriter!(other_user)
     active_favoritings.create!(favorited_id: other_user.id)
   end

  # Check whether you are favoriting
   def favoriting?(other_user)
     active_favoritings.find_by(favorited_id: other_user.id)
   end
   
   def unfavorite!(other_user)
     active_favoritings.find_by(favorited_id: other_user.id).destroy
   end

  
  has_many :active_relationships, foreign_key: 'follower_id', class_name: 'Relationship', dependent: :destroy
  has_many :passive_relationships, foreign_key: 'followed_id', class_name: 'Relationship', dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  
  def favorite(article)
   favorites.find_or_create_by(article: article)
  end
 
 def unfavorite(article)
   favorites.where(article: article).destroy_all
   
   article.reload
 end
  
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
  validates :image, presence: true
  
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
end
