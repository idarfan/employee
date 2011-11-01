class ChangeCnameColumToStudents < ActiveRecord::Migration
  def self.up
    change_column :students, :cname, :string , :null => false
  end

  def self.down
    change_column :students, :cname, :string , :null => true
  end
end