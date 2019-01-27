class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :admin_user
    belongs_to :post
    belongs_to :article
    belongs_to :performer
    belongs_to :publication
    belongs_to :teacher
    belongs_to :staff
    belongs_to :admission
end
