class CreateStafflogins < ActiveRecord::Migration
  def self.up
    create_table :stafflogins do |t|      
      t.string :name, :null => false
      t.string :password, :null => false, :limit => 64
      t.integer :level, :null => false, :default => 0, :limit => 1
      t.timestamps
    end
    add_index :stafflogins, ["name"], :name => "stafflogins_name" , :unique => true
  end

  def self.down
    drop_table :stafflogins
  end
end