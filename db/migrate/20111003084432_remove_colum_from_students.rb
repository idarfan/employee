class RemoveColumFromStudents < ActiveRecord::Migration
  def self.up
    remove_column :students, :howucanimprove_other
  end

  def self.down
    add_column :students, :howucanimprove_other
  end
end