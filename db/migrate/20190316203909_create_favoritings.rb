class CreateFavoritings < ActiveRecord::Migration[5.1]
  def change
    create_table :favoritings do |t|
      t.integer :favoriter_id
      t.integer :favorited_id

      t.timestamps
    end
    add_index :favoritings, :favoriter_id
    add_index :favoritings, :favorited_id
    add_index :favoritings, [:favoriter_id, :favorited_id], unique: true
  end
end
