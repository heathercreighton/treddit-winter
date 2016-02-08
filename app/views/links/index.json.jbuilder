json.array!(@links) do |link|
  json.extract! link, :id, :link, :name, :score
  json.url link_url(link, format: :json)
end
