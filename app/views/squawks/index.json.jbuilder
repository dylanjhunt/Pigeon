json.array!(@squawks) do |squawk|
  json.extract! squawk, :id, :name, :title, :content
  json.url squawk_url(squawk, format: :json)
end
