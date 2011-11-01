class Weeklyusage < ActiveRecord::Base
  has_many :student_weeklyusageship
 has_many :student, :through => :student_weeklyusageship
end