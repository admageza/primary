class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.text :firstname
      t.text :lastname
      t.text :body

      t.timestamps
    end
  end
end
