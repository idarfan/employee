class CreateBeen2others < ActiveRecord::Migration
  def self.up
    create_table :been2others do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :been2others
  end
end
