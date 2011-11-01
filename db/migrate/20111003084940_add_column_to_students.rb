class AddColumnToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :howcanimprove_other, :string
  end

  def self.down
    remove_column :students, :howcanimprove_other
  end
end