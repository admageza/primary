class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :image
      t.string :email
      t.string :password_digest
      t.text :body

      t.timestamps
    end
  end
end
