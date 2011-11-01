class AddColumnsStudentinfos < ActiveRecord::Migration
  def self.up
    #add_column :studentinfos, :whylearn_other, :integer
    add_column :studentinfos, :howucanimprove_other, :integer
    add_column :studentinfos, :mostneed_other, :integer
  end

  def self.down
    #remove_column studentinfos, whylearn_other, :integer
    remove_column studentinfos, howucanimprove_other, :integer
    remove_column studentinfos, mostneed_other, :integer
  end
end