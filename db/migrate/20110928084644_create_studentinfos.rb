class CreateStudentinfos < ActiveRecord::Migration
  def self.up
    create_table :studentinfos do |t|
      t.string :whylearn_other
      t.string :beentoother_other

      t.timestamps
    end
  end

  def self.down
    drop_table :studentinfos
  end
end
