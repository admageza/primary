class CreateAdmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :admissions do |t|
      t.text :image
      t.text :name
      t.text :othername
      t.text :lastname
      t.text :dob
      t.text :pob
      t.text :legalregdate
      t.text :orphan
      t.text :fathername
      t.integer :fatherid
      t.integer :fatherphone
      t.text :mothername
      t.integer :motherid
      t.integer :motherphone
      t.text :residentplace
      t.text :previousschool
      t.text :level
      t.text :comment

      t.timestamps
    end
  end
end
