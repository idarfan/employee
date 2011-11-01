class CreateStudentHowuknowusships < ActiveRecord::Migration
  def self.up
    create_table :student_howuknowusships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_howuknowusships
  end
end
