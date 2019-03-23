class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.text :image
      t.text :name
      t.text :body

      t.timestamps
    end
  end
end
