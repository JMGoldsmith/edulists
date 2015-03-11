class CurriculumCourse < ActiveRecord::Base
  has_many :courses
  belongs_to :curriculum
end
