class CreateComment10s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment10s do |t|
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
