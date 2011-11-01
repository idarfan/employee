class AddIdxColumToStudentMostneedships < ActiveRecord::Migration
  def self.up
    add_column :student_mostneedships, :student_id, :integer
    add_column :student_mostneedships, :mostneed_id, :integer
    add_index :student_mostneedships, [:student_id, :mostneed_id] , :name => "student_id_mostneed_id", :unique => true
  end
  def self.down
    remove_column :student_mostneedships, :student_id
    remove_column :student_mostneedships, :mostneed_id
    remove_index :student_mostneedships , :name =>  "student_id_mostneed_id"
  end
end