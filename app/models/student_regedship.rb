class StudentRegedship < ActiveRecord::Base
  belongs_to :student
  belongs_to :reged
end