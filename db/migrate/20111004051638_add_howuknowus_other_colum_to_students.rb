class AddHowuknowusOtherColumToStudents < ActiveRecord::Migration
  def self.up
     add_column :students, :howuknowus_other, :string
  end

  def self.down
    remove_column :students, :howuknowus_other
  end
end