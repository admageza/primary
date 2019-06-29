class AddAdminUserToActivities < ActiveRecord::Migration[5.1]
  def change
    add_reference :activities, :admin_user, foreign_key: true
  end
end
