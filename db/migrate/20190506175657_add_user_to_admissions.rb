class AddUserToAdmissions < ActiveRecord::Migration[5.1]
  def change
    add_reference :admissions, :user, foreign_key: true
  end
end
