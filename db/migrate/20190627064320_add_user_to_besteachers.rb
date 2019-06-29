class AddUserToBesteachers < ActiveRecord::Migration[5.1]
  def change
    add_reference :besteachers, :user, foreign_key: true
  end
end
