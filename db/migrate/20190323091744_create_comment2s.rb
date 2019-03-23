class CreateComment2s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment2s do |t|
      t.references :teacher, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
