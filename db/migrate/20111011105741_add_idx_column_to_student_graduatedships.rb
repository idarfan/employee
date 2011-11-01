class AddIdxColumnToStudentGraduatedships < ActiveRecord::Migration
  def self.up
    add_column :student_graduatedships, :student_id, :integer
    add_column :student_graduatedships, :graduated_id, :integer
    add_index :student_graduatedships, [:student_id, :graduated_id] , :name => "student_id_graduated_id", :unique => true
  end
  def self.down
    remove_column :student_graduatedships, :student_id
    remove_column :student_graduatedships, :graduated_id
    remove_index :student_graduatedships , :name => "student_id_graduated_id"
  end
end