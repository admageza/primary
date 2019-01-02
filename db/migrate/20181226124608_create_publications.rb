class CreatePublications < ActiveRecord::Migration[5.1]
  def change
    create_table :publications do |t|
      t.string :title
      t.text :image
      t.text :body

      t.timestamps
    end
  end
end
