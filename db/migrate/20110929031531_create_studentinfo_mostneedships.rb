class CreateStudentinfoMostneedships < ActiveRecord::Migration
  def self.up
    create_table :studentinfo_mostneedships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :studentinfo_mostneedships
  end
end
