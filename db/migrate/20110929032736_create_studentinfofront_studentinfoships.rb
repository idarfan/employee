class CreateStudentinfofrontStudentinfoships < ActiveRecord::Migration
  def self.up
    create_table :studentinfofront_studentinfoships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :studentinfofront_studentinfoships
  end
end
