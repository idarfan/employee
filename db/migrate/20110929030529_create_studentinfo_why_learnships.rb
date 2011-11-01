class CreateStudentinfoWhyLearnships < ActiveRecord::Migration
  def self.up
    create_table :studentinfo_why_learnships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :studentinfo_why_learnships
  end
end