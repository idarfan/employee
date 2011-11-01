class CreateBeeeothers < ActiveRecord::Migration
  def self.up
    create_table :beeeothers do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :beeeothers
  end
end
