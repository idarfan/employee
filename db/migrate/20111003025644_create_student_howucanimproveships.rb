class CreateStudentHowucanimproveships < ActiveRecord::Migration
  def self.up
    create_table :student_howucanimproveships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_howucanimproveships
  end
end
