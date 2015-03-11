class Course < ActiveRecord::Base
  belongs_to :playlist, :curriculum
end
