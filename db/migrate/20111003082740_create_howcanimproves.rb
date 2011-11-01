class CreateHowcanimproves < ActiveRecord::Migration
  def self.up
    create_table :howcanimproves do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :howcanimproves
  end
end
