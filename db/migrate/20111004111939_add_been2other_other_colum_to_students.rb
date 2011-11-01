class AddBeen2otherOtherColumToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :been2other_other, :string
  end

  def self.down
    remove_column :students, :been2other_other, :string
  end
end