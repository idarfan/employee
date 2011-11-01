class CreateStudentHowcanimproveships < ActiveRecord::Migration
  def self.up
    create_table :student_howcanimproveships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_howcanimproveships
  end
end
