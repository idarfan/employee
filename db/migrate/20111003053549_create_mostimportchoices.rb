class CreateMostimportchoices < ActiveRecord::Migration
  def self.up
    create_table :mostimportchoices do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :mostimportchoices
  end
end
