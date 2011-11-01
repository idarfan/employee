class AddFrequentmagOtherColumToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :frequentmag_other, :string
  end

  def self.down
    remove_column :students, :frequentmag_other, :string
  end
end