class AddColumnStudentinfofrontStudentinfoships < ActiveRecord::Migration
   def self.up
    add_column :studentinfofront_studentinfoships, :studentinfo_id, :integer
    add_index :studentinfofront_studentinfoships, :studentinfo_id, :name => "ohyes"
    add_column :studentinfofront_studentinfoships, :studentinfofront_id, :integer
    add_index :studentinfofront_studentinfoships, :studentinfofront_id, :name => "ohno"
  end

  def self.down
    remove_column :studentinfofront_studentinfoships, :studentinfo_id, :integer
    remove_index :studentinfofront_studentinfoships, :studentinfo_id, :name => "ohyes"
    remove_column :studentinfofront_studentinfoships, :studentinfofront_id, :integer
    remove_index :studentinfofront_studentinfoships, :studentinfofront_id, :name => "ohno"
  end
end