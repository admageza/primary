class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.text :image
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
