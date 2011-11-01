class AddIdxColumnStudentinfoMostneedships < ActiveRecord::Migration
  def self.up
    add_column :studentinfo_mostneedships, :studentinfo_id, :integer
    add_index :studentinfo_mostneedships, :studentinfo_id, :name => "studentinfo_id"
    add_column :studentinfo_mostneedships, :mostneed_id, :integer
    add_index :studentinfo_mostneedships, :mostneed_id, :name => "mostneed_id"
  end
    
  def self.down
    remove_column :studentinfo_mostneedships, :studentinfo_id, :integer
    remove_index :studentinfo_mostneedships, :studentinfo_id, :name => "studentinfo_id"
    remove_column :studentinfo_mostneedships, :mostneed_id, :integer
    remove_index :studentinfo_mostneedships, :mostneed_id, :name => "mostneed_id"
  end
end   