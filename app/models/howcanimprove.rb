class Howcanimprove < ActiveRecord::Base
   has_many :student_improveship
	has_many :student, :through => :student_improveship
end