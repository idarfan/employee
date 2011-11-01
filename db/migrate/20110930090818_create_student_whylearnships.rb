class CreateStudentWhylearnships < ActiveRecord::Migration
  def self.up
    create_table :student_whylearnships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_whylearnships
  end
end
