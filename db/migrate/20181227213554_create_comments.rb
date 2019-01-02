class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :post, foreign_key: true
      t.references :article, foreign_key: true
      t.references :teacher, foreign_key: true
      t.references :staff, foreign_key: true
      t.references :publication, foreign_key: true
      t.references :performer, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
