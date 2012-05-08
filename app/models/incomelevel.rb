class Incomelevel < ActiveRecord::Base
  has_many :student_incomelevelships
  has_many :students, :through => :student_incomelevelships
end