class AddIdxColumToStudentIncomelevelships < ActiveRecord::Migration
  def self.up
    add_column :student_incomelevelships, :student_id, :integer
    add_column :student_incomelevelships, :incomelevel_id, :integer
    add_index :student_incomelevelships, [:student_id, :incomelevel_id] , :name => "student_id_incomelevel_id", :unique => true
  end
  def self.down
    remove_column :student_incomelevelships, :student_id
    remove_column :student_incomelevelships, :incomelevel_id
    remove_index :student_incomelevelships , :name => "student_id_incomelevel_id"
  end
end
