class CreateStudentIncomelevelships < ActiveRecord::Migration
  def self.up
    create_table :student_incomelevelships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_incomelevelships
  end
end
