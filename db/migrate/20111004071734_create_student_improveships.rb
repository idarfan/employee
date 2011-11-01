class CreateStudentImproveships < ActiveRecord::Migration
  def self.up
    create_table :student_improveships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_improveships
  end
end
