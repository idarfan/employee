class AddIdxColumToStudentNoticeships < ActiveRecord::Migration
  def self.up
    add_column :student_noticeships, :student_id, :integer
    add_column :student_noticeships, :notice_id, :integer
    add_index :student_noticeships, [:student_id, :notice_id] , :name => "student_id_notice_id", :unique => true
  end
  def self.down
    remove_column :student_noticeships, :student_id
    remove_column :student_noticeships, :notice_id
    remove_index :student_noticeships , :name => "student_id_notice_id"
  end
end       