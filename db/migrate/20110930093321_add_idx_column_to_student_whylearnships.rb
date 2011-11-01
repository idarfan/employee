class AddIdxColumnToStudentWhylearnships < ActiveRecord::Migration
  def self.up
    add_column :student_whylearnships, :student_id, :integer
    add_index :student_whylearnships, :student_id, :name => "student_id"
    add_column :student_whylearnships, :whylearn_id, :integer
    add_index :student_whylearnships, :whylearn_id, :name => "whylearn_id"
  end

  def self.down
    remove_column :student_whylearnships, :student_id, :integer
    remove_index :student_whylearnships, :student_id, :name => "student_id"
    remove_column :student_whylearnships, :whylearn_id, :integer
    remove_index :student_whylearnships, :whylearn_id, :name => "whylearn_id"
  end
end