# encoding: utf-8
class Whylearn < ActiveRecord::Base
	has_many :student_whylearnships
	has_many :students, :through => :student_whylearnships
end