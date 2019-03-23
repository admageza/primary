class CreateBesteachers < ActiveRecord::Migration[5.1]
  def change
    create_table :besteachers do |t|
      t.text :image
      t.text :name
      t.text :body

      t.timestamps
    end
  end
end
