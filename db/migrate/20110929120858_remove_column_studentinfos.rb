class RemoveColumnStudentinfos < ActiveRecord::Migration
  def self.up    
    add_column :studentinfos, :studentinfofront_id, :integer
  end

  def self.down    
     remove_column :studentinfos, :studentinfofront_id
  end
end