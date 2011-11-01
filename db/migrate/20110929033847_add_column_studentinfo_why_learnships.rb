class AddColumnStudentinfoWhyLearnships < ActiveRecord::Migration
  def self.up
    add_column :studentinfo_why_learnships, :studentinfo_id, :integer
    add_index :studentinfo_why_learnships, :studentinfo_id, :name => "studentinfo_id"
    add_column :studentinfo_why_learnships, :whylearn_id, :integer
	  add_index :studentinfo_why_learnships, :whylearn_id, :name => "whylearn_id"
  end

  def self.down
    remove_column :studentinfo_why_learnships, :studentinfo_id, :integer
    remove_index :studentinfo_why_learnships, :studentinfo_id, :name => "studentinfo_id"
    remove_column :studentinfo_why_learnships, :whylearn_id, :integer
	  remove_index :studentinfo_why_learnships, :whylearn_id, :name => "whylearn_id"
  end
end