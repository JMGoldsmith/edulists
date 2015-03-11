json.array!(@playlists) do |playlist|
  json.extract! playlist, :id, :playlist_name, :course
  json.url playlist_url(playlist, format: :json)
end
