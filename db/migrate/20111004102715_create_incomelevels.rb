class CreateIncomelevels < ActiveRecord::Migration
  def self.up
    create_table :incomelevels do |t|
      t.string :reason_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :incomelevels
  end
end
