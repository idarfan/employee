class ChangeStudentIdColum < ActiveRecord::Migration
  change_column :students, :student_id, :string 
end
def self.down
 change_column :students, :student_id, :string
end
