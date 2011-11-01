class StudentNoticeship < ActiveRecord::Base
   belongs_to :student
  belongs_to :notice
end