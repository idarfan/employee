class AddIdxColumToStudentHowcanimproveships < ActiveRecord::Migration
  def self.up
    add_column :student_howcanimproveships, :student_id, :integer
    add_index :student_howcanimproveships, :student_id, :name => "student_id"
    add_column :student_howcanimproveships, :howcanimprove_id, :integer
    add_index :student_howcanimproveships, :howcanimprove_id, :name => "howcanimprove_id"
  end

  def self.down
    remove_column :student_howcanimproveships, :student_id, :integer
    remove_index :student_howcanimproveships, :student_id, :name => "student_id"
    remove_column :student_howcanimproveships, :howcanimprove_id, :integer
    remove_index :student_howcanimproveships, :howcanimprove_id, :name => "howcanimprove_id"
  end
end