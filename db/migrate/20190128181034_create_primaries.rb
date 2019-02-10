class CreatePrimaries < ActiveRecord::Migration[5.1]
  def change
    create_table :primaries do |t|
      t.string :title
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
