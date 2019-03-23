class CreateComment5s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment5s do |t|
      t.references :maternaire, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
