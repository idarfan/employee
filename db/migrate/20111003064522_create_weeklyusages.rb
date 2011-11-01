class CreateWeeklyusages < ActiveRecord::Migration
  def self.up
    create_table :weeklyusages do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :weeklyusages
  end
end
