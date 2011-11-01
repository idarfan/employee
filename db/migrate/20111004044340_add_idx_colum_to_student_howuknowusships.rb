class AddIdxColumToStudentHowuknowusships < ActiveRecord::Migration
   def self.up
    add_column :student_howuknowusships, :student_id, :integer
    add_index :student_howuknowusships, :student_id, :name => "student_id"
    add_column :student_howuknowusships, :howuknowu_id, :integer
    add_index :student_howuknowusships, :howuknowu_id, :name => "howuknowu_id"
  end

  def self.down
    remove_column :student_howuknowusships, :student_id, :integer
    remove_index :student_howuknowusships, :student_id, :name => "student_id"
    remove_column :student_howuknowusships, :howuknowu_id, :integer     
    remove_index :student_howuknowusships, :howuknowu_id, :name => "howuknowu_id"
  end         
end