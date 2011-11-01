class StudentMostneedship < ActiveRecord::Base
  belongs_to :student
  belongs_to :mostneed
end