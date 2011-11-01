class CreateMostneeds < ActiveRecord::Migration
  def self.up
    create_table :mostneeds do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :mostneeds
  end
end
