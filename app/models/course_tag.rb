class CourseTag < ActiveRecord::Base
  has_many :courses
end
