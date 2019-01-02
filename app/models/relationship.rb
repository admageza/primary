class Relationship < ApplicationRecord
    belongs_to :followed, class_name: "User"
    belongs_to :follower, class_name: "User"
    # belongs_to :followed, class_name: "Admin_user"
    # belongs_to :follower, class_name: "Admin_user"
end
