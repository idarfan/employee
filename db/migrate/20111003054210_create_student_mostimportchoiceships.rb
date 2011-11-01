class CreateStudentMostimportchoiceships < ActiveRecord::Migration
  def self.up
    create_table :student_mostimportchoiceships do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_mostimportchoiceships
  end
end
