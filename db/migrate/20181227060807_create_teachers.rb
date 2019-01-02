class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.text :image
      t.text :body

      t.timestamps
    end
  end
end
