class CreateAdmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :admissions do |t|
      t.text :image
      t.text :FirstName
      t.text :OtherName
      t.text :FirstName
      t.text :PlaceOfBirth
      t.text :ResidentPlace
      t.date :DateOfBirth
      t.date :LegalRegDate
      t.string :Orphan
      t.text :PreviousSchool
      t.string :level
      t.text :FatherName
      t.integer :FatherId
      t.float :FatherPhone
      t.text :MotherName
      t.integer :MotherId
      t.float :MotherPhone
      t.text :comment

      t.timestamps
    end
  end
end
