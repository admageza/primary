class AddAdminUserToMaternaires < ActiveRecord::Migration[5.1]
  def change
    add_reference :maternaires, :admin_user, foreign_key: true
  end
end
