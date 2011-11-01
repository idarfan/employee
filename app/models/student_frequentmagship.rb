class StudentFrequentmagship < ActiveRecord::Base
  belongs_to :student
  belongs_to :frequentmag
end