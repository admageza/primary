class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :user, counter_cache: true
    belongs_to :admin_user
    belongs_to :post
    belongs_to :post, counter_cache: true
    belongs_to :article
    belongs_to :article, counter_cache: true
    belongs_to :performer
    belongs_to :performer, counter_cache: true
    belongs_to :publication
    belongs_to :publication, counter_cache: true
    belongs_to :teacher
    belongs_to :teacher, counter_cache: true
    belongs_to :staff
    belongs_to :staff, counter_cache: true
    belongs_to :admission
    belongs_to :admission, counter_cache: true
  
 
end
