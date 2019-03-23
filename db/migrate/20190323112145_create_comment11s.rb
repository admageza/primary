class CreateComment11s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment11s do |t|
      t.references :post, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
