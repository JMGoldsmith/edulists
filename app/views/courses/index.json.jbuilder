json.array!(@courses) do |course|
  json.extract! course, :id, :name, :source
  json.url course_url(course, format: :json)
end
