class CreateComment7s < ActiveRecord::Migration[5.1]
  def change
    create_table :comment7s do |t|
      t.references :besteacher, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
