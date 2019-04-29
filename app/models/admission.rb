class Admission < ApplicationRecord
     mount_uploader :image, ImageUploader
     has_many :comments, as: :commentable
     belongs_to :user, :optional => true
     validates :image, presence: true
     validates :FirstName, presence: true, length: { minimum: 3 }
     validates :PlaceOfBirth, presence: true, length: { minimum: 3 }
     validates :DateOfBirth, presence: true
     validates :level, presence: true, length: { maximum: 5 }
     validates :FatherName, presence: true, length: { minimum: 3 }
     validates :FatherPhone, presence: true, length: { maximum: 15 }
     validates :MotherName, presence: true, length: { minimum: 3 }
     validates :MotherPhone, presence: true, length: { maximum: 15 }
end
