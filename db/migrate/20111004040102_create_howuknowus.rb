class CreateHowuknowus < ActiveRecord::Migration
  def self.up
    create_table :howuknowus do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :howuknowus
  end
end
