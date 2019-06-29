class AddAdminUserToStaffs < ActiveRecord::Migration[5.1]
  def change
    add_reference :staffs, :admin_user, foreign_key: true
  end
end
