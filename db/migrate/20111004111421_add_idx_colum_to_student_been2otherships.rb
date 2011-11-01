class AddIdxColumToStudentBeen2otherships < ActiveRecord::Migration
  def self.up
    add_column :student_been2otherships, :student_id, :integer
    add_column :student_been2otherships, :been2other_id, :integer
    add_index :student_been2otherships, [:student_id, :been2other_id] , :name => "student_id_been2other_id", :unique => true
  end
  def self.down
    remove_column :student_been2otherships, :student_id
    remove_column :student_been2otherships, :been2other_id
    remove_index :student_been2otherships , :name => "student_id_been2other_id"
  end
end