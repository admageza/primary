class AddUserToPerformers < ActiveRecord::Migration[5.1]
  def change
    add_reference :performers, :user, foreign_key: true
  end
end
