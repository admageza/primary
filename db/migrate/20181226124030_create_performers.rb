class CreatePerformers < ActiveRecord::Migration[5.1]
  def change
    create_table :performers do |t|
      t.string :title
      t.text :image
      t.text :body

      t.timestamps
    end
  end
end
