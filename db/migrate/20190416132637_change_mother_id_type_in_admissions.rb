class ChangeMotherIdTypeInAdmissions < ActiveRecord::Migration[5.1]
  def self.up
    change_column :admissions, :MotherId, :text
  end
 
  def self.down
    change_column :admissions, :MotherId, :integer
  end
end
