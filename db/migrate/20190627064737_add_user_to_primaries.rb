class AddUserToPrimaries < ActiveRecord::Migration[5.1]
  def change
    add_reference :primaries, :user, foreign_key: true
  end
end
