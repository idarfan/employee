class AddIdxColumToStudentFrequentmagships < ActiveRecord::Migration
  def self.up
    add_column :student_frequentmagships, :student_id, :integer
    add_index :student_frequentmagships, :student_id, :name => "student_id"
    add_column :student_frequentmagships, :frequentmag_id, :integer
    add_index :student_frequentmagships, :frequentmag_id, :name => "frequentmag_id"
  end

  def self.down
    remove_column :student_frequentmagships, :student_id, :integer
    remove_index :student_frequentmagships, :student_id, :name => "student_id"
    remove_column :student_frequentmagships, :frequentmag_id, :integer
    remove_index :student_frequentmagships, :frequentmag_id, :name => "frequentmag_id"
  end
end