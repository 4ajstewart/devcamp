json.array!(@talks) do |talk|
  json.extract! talk, :id, :name, :description
  json.url talk_url(talk, format: :json)
end
