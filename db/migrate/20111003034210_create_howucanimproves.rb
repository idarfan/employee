class CreateHowucanimproves < ActiveRecord::Migration
  def self.up
    create_table :howucanimproves do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :howucanimproves
  end
end
