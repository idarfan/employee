class AddIdxColumToStudentMostimportchoiceships < ActiveRecord::Migration
   def self.up
    add_column :student_mostimportchoiceships, :student_id, :integer
    add_index :student_mostimportchoiceships, :student_id, :name => "student_id"
    add_column :student_mostimportchoiceships, :mostimportchoice_id, :integer
    add_index :student_mostimportchoiceships, :mostimportchoice_id, :name => "mostimportchoice_id"
  end

  def self.down
    remove_column :student_mostimportchoiceships, :student_id, :integer
    remove_index :student_mostimportchoiceships, :student_id, :name => "student_id"
    remove_column :student_mostimportchoiceships, :mostimportchoice_id, :integer
    remove_index :student_mostimportchoiceships, :mostimportchoice_id, :name => "mostimportchoice_id"
  end
end