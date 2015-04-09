class User < ActiveRecord::Base
  has_many :playlists
  has_many :curriculum
end
