class CreateStudentBeen2otherships < ActiveRecord::Migration
  def self.up
    create_table :student_been2otherships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_been2otherships
  end
end
