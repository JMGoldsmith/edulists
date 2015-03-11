json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :id, :curriculum_name, :created_by
  json.url curriculum_url(curriculum, format: :json)
end
