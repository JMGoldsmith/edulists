class PlaylistCourse < ActiveRecord::Base
  belongs_to :playlist 
  has_many :courses

end
