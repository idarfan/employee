class Reged < ActiveRecord::Base
  has_many :student_regedship
  has_many :student, :through => :student_regedship
end
