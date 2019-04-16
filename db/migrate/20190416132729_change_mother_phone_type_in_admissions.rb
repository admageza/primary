class ChangeMotherPhoneTypeInAdmissions < ActiveRecord::Migration[5.1]
  def self.up
    change_column :admissions, :MotherPhone, :text
  end
 
  def self.down
    change_column :admissions, :MotherPhone, :float
  end
end
