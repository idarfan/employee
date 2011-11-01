class Mostneed < ActiveRecord::Base
  has_many :student_mostneedship
  has_many :student, :through => :student_mostneedship
end