class AddAdminUserToTeachers < ActiveRecord::Migration[5.1]
  def change
    add_reference :teachers, :admin_user, foreign_key: true
  end
end
