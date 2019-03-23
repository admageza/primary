class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :user, counter_cache: true
    belongs_to :admin_user
    belongs_to :article
    belongs_to :article, counter_cache: true
 
end
