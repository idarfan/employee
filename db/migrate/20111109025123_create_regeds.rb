class CreateRegeds < ActiveRecord::Migration
  def self.up
    create_table :regeds do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :regeds
  end
end
