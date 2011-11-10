class CreateStudentRegedships < ActiveRecord::Migration
  def self.up
    create_table :student_regedships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_regedships
  end
end
