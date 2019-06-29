class AddUserToStaffs < ActiveRecord::Migration[5.1]
  def change
    add_reference :staffs, :user, foreign_key: true
  end
end
