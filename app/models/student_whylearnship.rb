class StudentWhylearnship < ActiveRecord::Base
  belongs_to :student
  belongs_to :whylearn
end