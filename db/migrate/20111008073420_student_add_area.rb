class StudentAddArea < ActiveRecord::Migration
  def self.up
    add_column :students , :main_area , :integer , :limit => 1
    add_column :students , :sub_area , :integer , :limit => 1
    add_column :students , :road_name , :string , :default => ""
  end

  def self.down
    remove_column :students , :main_area
    remove_column :students , :sub_area
    remove_column :students , :road_name
  end
end
