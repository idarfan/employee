class AddRegedColumToStudens < ActiveRecord::Migration
  def self.up
    add_column :students, :reged, :integer
  end

  def self.down
    remove_column :students, :reged, :integer
  end
end