class Comment < ApplicationRecord
  belongs_to :post
   belongs_to :article
    belongs_to :performer
     belongs_to :publication
      belongs_to :staff
       belongs_to :teacher
end
