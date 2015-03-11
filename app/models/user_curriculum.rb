class UserCurriculum < ActiveRecord::Base
  has_many :curriculum 
  belongs_to :user
end
