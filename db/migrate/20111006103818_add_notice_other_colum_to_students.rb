class AddNoticeOtherColumToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :notice_other, :text
  end
  
  def self.down
    remove_column :students, :notice_other, :text
  end
end