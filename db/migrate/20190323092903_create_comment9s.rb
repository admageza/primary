class CreateComment9s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment9s do |t|
      t.references :admission, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
