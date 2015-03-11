class Curriculum < ActiveRecord::Base
  has_many :courses, :users
end
