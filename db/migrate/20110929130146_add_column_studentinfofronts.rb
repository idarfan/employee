class AddColumnStudentinfofronts < ActiveRecord::Migration
  def self.up
    add_column :studentinfofronts, :studentinfofront_id, :integer
  end

  def self.down
    remove_column :studentinfofrotns, :studentinfofront_id
  end
end