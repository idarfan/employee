class AddIdxColumToStudentWeeklyusageships < ActiveRecord::Migration
   def self.up
    add_column :student_weeklyusageships, :student_id, :integer
    add_index :student_weeklyusageships, :student_id, :name => "student_id"
    add_column :student_weeklyusageships, :weeklyusage_id, :integer
    add_index :student_weeklyusageships, :weeklyusage_id, :name => "weeklyusage_id"
  end

  def self.down
    remove_column :student_weeklyusageships, :student_id, :integer
    remove_index :student_weeklyusageships, :student_id, :name => "student_id"
    remove_column :student_weeklyusageships, :weeklyusage_id, :integer
    remove_index :student_weeklyusageships, :weeklyusage_id, :name => "weeklyusage_id"
  end
end              