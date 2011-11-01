class Frequentmag < ActiveRecord::Base
  has_many :student_frequentmagship
	has_many :student, :through => :student_frequentmagship
end