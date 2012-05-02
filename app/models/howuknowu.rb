class Howuknowu < ActiveRecord::Base
   has_many :student_howuknowusship
   has_many :student, :through => :student_howuknowusship
end