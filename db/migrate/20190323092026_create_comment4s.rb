class CreateComment4s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment4s do |t|
      t.references :primary, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
