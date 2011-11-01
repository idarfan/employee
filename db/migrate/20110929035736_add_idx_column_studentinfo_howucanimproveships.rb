class AddIdxColumnStudentinfoHowucanimproveships < ActiveRecord::Migration
   def self.up
    add_column :studentinfo_howucanimproveships, :studentinfo_id, :integer
    add_index :studentinfo_howucanimproveships, :studentinfo_id, :name => "studentinfo_id"
    add_column :studentinfo_howucanimproveships, :howucanimprove_id, :integer
    add_index :studentinfo_howucanimproveships, :howucanimprove_id, :name => "howucanimprove_id"
  end
    
  def self.down
    remove_column :studentinfo_howucanimproveships, :studentinfo_id, :integer
    remove_index :studentinfo_howucanimproveships, :studentinfo_id, :name => "studentinfo_id"
    remove_column :studentinfo_howucanimproveships, :howucanimprove_id, :integer
    remove_index :studentinfo_howucanimproveships, :howucanimprove_id, :name => "howucanimprove_id"
  end
end             