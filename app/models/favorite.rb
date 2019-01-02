class Favorite < ApplicationRecord
    belongs_to :admin_user
    belongs_to :performer
end
