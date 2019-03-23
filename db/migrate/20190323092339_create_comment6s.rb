class CreateComment6s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment6s do |t|
      t.references :publication, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
