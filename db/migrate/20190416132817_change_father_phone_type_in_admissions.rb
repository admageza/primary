class ChangeFatherPhoneTypeInAdmissions < ActiveRecord::Migration[5.1]
  def self.up
    change_column :admissions, :FatherPhone, :text
  end
 
  def self.down
    change_column :admissions, :FatherPhone, :float
  end
end
