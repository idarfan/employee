class Notice < ActiveRecord::Base
  has_many :student_noteiceship
  has_many :student, :through => :student_noticeship
end
