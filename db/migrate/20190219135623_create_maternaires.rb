class CreateMaternaires < ActiveRecord::Migration[5.1]
  def change
    create_table :maternaires do |t|
      t.string :title
      t.text :image
      t.text :body

      t.timestamps
    end
  end
end
