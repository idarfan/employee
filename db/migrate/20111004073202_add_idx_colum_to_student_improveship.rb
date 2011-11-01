class AddIdxColumToStudentImproveship < ActiveRecord::Migration
  def self.up
    add_column :student_improveships, :student_id, :integer
    add_column :student_improveships, :howcanimprove_id, :integer
    add_index :student_improveships , [:student_id, :howcanimprove_id] , :name => "studenti_id_howcanimprove_id", :unique => true
  end
  def self.down
    #remove_column :student_improveships, :student_id
   # remove_column :student_improveships, :howcanimprove_id
   # remove_index :student_improveships , :name =>  "studenti_id_howcanimprove_id"
  end
end