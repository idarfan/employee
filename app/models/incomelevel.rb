class Incomelevel < ActiveRecord::Base
   has_many :student_incomelevelship
	has_many :student, :through => :student_incomelevelship
end