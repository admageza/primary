class Test < ApplicationRecord
  has_many :comments, as: :commentable 
end
