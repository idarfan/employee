class AddColumnGraduatedToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :graduated_other, :string
  end

  def self.down
    remove_column :students, :graduated_other, :string
  end
end