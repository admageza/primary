class AddAdminUserToPrimaries < ActiveRecord::Migration[5.1]
  def change
    add_reference :primaries, :admin_user, foreign_key: true
  end
end
