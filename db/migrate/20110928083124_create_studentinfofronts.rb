class CreateStudentinfofronts < ActiveRecord::Migration
  def self.up
    create_table :studentinfofronts do |t|
      t.integer :studentinfo_id
      t.string :cname
      t.string :ename
      t.date :birthday
      t.string :gender
      t.string :address
      t.string :telephone
      t.string :mobile_phone
      t.string :school
      t.string :sales
      t.string :introduce

      t.timestamps
    end
  end

  def self.down
    drop_table :studentinfofronts
  end
end
