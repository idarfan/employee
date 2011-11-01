class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.integer :student_id
      t.string :cname
      t.string :ename
      t.date :birthday
      t.string :gender
      t.string :email
      t.string :address
      t.string :telephone
      t.string :mobile_phone
      t.string :school
      t.string :sales
      t.string :introduce
      t.string :whylearn_other
      t.string :howucanimprove_other
      t.string :mostneed_other

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
