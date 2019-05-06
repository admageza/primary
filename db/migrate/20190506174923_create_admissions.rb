class CreateAdmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :admissions do |t|
      t.text "image"
      t.text "first_name"
      t.text "other_name"
      t.text "last_name"
      t.text "place_of_birth"
      t.text "resident_place"
      t.date "date_of_birth"
      t.date "legal_reg_date"
      t.text "orphan"
      t.text "previous_school"
      t.text "level"
      t.text "father_name"
      t.text "father_id"
      t.float "father_phone"
      t.text "mother_name"
      t.text "mother_id"
      t.float "mother_phone"
      t.text "comment"

      t.timestamps
    end
  end
end
