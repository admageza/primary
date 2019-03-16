class Favoriting < ApplicationRecord
    belongs_to :favorited, class_name: "User"
    belongs_to :favoriter, class_name: "User"
end
