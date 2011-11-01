class CreateWhylearns < ActiveRecord::Migration
  def self.up
    create_table :whylearns do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :whylearns
  end
end
