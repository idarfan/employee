class CreateGraduateds < ActiveRecord::Migration
  def self.up
    create_table :graduateds do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :graduateds
  end
end
