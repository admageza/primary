class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :admin_user_id
      t.integer :post_id
      t.integer :article_id
      t.integer :performer_id
      t.integer :publication_id
      t.integer :staff_id
      t.integer :teacher_id
      t.integer :admission_id

      t.timestamps
    end
  end
end
