class CreateComment3s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment3s do |t|
      t.references :staff, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
