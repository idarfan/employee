class DropTableStudentinfofrontSutdentinfoships < ActiveRecord::Migration
  def self.up
    drop_table :studentinfofront_studentinfoships
  end

  def self.down
    drop_table :studentinfofront_studentinfoships
  end
end