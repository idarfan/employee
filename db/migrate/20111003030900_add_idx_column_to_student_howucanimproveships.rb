class AddIdxColumnToStudentHowucanimproveships < ActiveRecord::Migration
  def self.up
    add_column :student_howucanimproveships, :student_id, :integer
    add_index :student_howucanimproveships, :student_id, :name => "student_id"
    add_column :student_howucanimproveships, :howucanimprove_id, :integer
    add_index :student_howucanimproveships, :howucanimprove_id, :name => "howucanimprove_id"
  end

  def self.down
    remove_column :student_howucanimproveships, :student_id, :integer
    remove_index :student_howucanimproveships, :student_id, :name => "student_id"
    remove_column :student_howucanimproveships, :howucanimprove_id, :integer
    remove_index :student_howucanimproveships, :howucanimprove_id, :name => "howucanimprove_id"
  end
end