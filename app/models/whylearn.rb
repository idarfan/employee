# encoding: utf-8
class Whylearn < ActiveRecord::Base
	has_many :student_whylearnship
	has_many :student, :through => :student_whylearnship
end