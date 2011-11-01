class AddColumnStudentinfos < ActiveRecord::Migration
  def self.up      
    add_column :studentinfos, :studentinfo_id, :integer
  end
  def self.down
    remove_column :studentinfos, :studentinfo_id, :integer
  end 
end