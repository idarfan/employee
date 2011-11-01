class CreateStudentWeeklyusageships < ActiveRecord::Migration
  def self.up
    create_table :student_weeklyusageships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_weeklyusageships
  end
end
