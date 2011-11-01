class AddKeytimeColumnToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :keytime, :date
  end

  def self.down
    remove_column :students, :keytime, :date
  end
end
