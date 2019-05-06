class Admission < ApplicationRecord
    mount_uploader :image, ImageUploader
     has_many :comments, as: :commentable
     belongs_to :user, :optional => true
     validates :image, presence: true
     validates :first_name, presence: true, length: { minimum: 3 }
     validates :last_name, presence: true, length: { minimum: 3 }
     validates :place_of_birth, presence: true, length: { minimum: 3 }
     validates :date_of_birth, presence: true
     validates :level, presence: true, length: { maximum: 5 }
     validates :father_name, presence: true, length: { minimum: 3 }
     validates :father_phone, presence: true, length: { maximum: 15 }
     validates :mother_name, presence: true, length: { minimum: 3 }
     validates :mother_phone, presence: true, length: { maximum: 15 }
end
