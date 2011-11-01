class RemoveColumnStudentinfofronts < ActiveRecord::Migration
  def self.up
    remove_column :studentinfofronts, :studentinfo_id
  end

  def self.down
    remove_column :studentinfofronts, :studentinfo_id, :integer
  end
end
