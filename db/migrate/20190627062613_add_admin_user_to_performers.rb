class AddAdminUserToPerformers < ActiveRecord::Migration[5.1]
  def change
    add_reference :performers, :admin_user, foreign_key: true
  end
end
