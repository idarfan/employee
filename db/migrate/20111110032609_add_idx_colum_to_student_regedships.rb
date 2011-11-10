class AddIdxColumToStudentRegedships < ActiveRecord::Migration
  def self.up
    add_column :student_regedships, :student_id, :integer
    add_column :student_regedships, :reged_id, :integer
    add_index :student_regedships,[:student_id, :reged_id], :name => "student_id_reged_id", :unique => true
  end

  def self.down
    remove_column :student_regedships, :student_id, :integer
    remove_column :student_regedships, :reged_id, :integer
    remove_index :student_regedships,[:student_id, :reged_id], :name => "student_id_reged_id", :unique => true    
  end
end