class Course < ActiveRecord::Base
  belongs_to :playlist
  belongs_to :curriculum
end
