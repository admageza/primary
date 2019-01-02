class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :admin_user_id
      t.integer :performer_id

      t.timestamps
    end
  end
end
