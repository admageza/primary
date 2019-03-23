class CreateComment8s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment8s do |t|
      t.references :activity, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
