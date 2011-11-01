class Mostimportchoice < ActiveRecord::Base
  has_many :student_mostimportchoiceship
  has_many :student, :through => :student_mostimportchoiceship
end
