class CreateFrequentmags < ActiveRecord::Migration
  def self.up
    create_table :frequentmags do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :frequentmags
  end
end
