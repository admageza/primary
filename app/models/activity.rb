class Activity < ApplicationRecord
    mount_uploader :image, ImageUploader
    # belongs_to :admin_user, :optional => true
   
end
