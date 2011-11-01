class CreateStudentMostneedships < ActiveRecord::Migration
  def self.up
    create_table :student_mostneedships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_mostneedships
  end
end
