class CreateComment1s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment1s do |t|
      t.references :performer, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
