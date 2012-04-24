class StudentIncomelevelship < ActiveRecord::Base
belongs_to :student
belongs_to :incomelevel
end