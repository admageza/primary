class AddAdminUserToBesteachers < ActiveRecord::Migration[5.1]
  def change
    add_reference :besteachers, :admin_user, foreign_key: true
  end
end
