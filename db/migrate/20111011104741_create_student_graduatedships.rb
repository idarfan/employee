class CreateStudentGraduatedships < ActiveRecord::Migration
  def self.up
    create_table :student_graduatedships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_graduatedships
  end
end
