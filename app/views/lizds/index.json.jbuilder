json.array!(@lizds) do |lizd|
  json.extract! lizd, 
  json.url lizd_url(lizd, format: :json)
end
