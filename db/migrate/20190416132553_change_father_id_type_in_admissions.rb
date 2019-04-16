class ChangeFatherIdTypeInAdmissions < ActiveRecord::Migration[5.1]
  def self.up
    change_column :admissions, :FatherId, :text
  end
 
  def self.down
    change_column :admissions, :FatherId, :integer
  end
end
