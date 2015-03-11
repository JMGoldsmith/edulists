class User < ActiveRecord::Base
  has_many :playlists, :curriculum
end
