class StudentWeeklyusageship < ActiveRecord::Base
  belongs_to :student
  belongs_to :weeklyusage
end