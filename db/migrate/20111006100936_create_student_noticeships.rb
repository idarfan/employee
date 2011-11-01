class CreateStudentNoticeships < ActiveRecord::Migration
  def self.up
    create_table :student_noticeships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_noticeships
  end
end
