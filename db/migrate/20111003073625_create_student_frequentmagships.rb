class CreateStudentFrequentmagships < ActiveRecord::Migration
  def self.up
    create_table :student_frequentmagships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_frequentmagships
  end
end
