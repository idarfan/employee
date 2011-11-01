class CreateStudentinfoHowucanimproveships < ActiveRecord::Migration
  def self.up
    create_table :studentinfo_howucanimproveships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :studentinfo_howucanimproveships
  end
end
