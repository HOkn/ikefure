json.array!(@raws) do |raw|
  json.extract! raw, :id, :user_id, :filename
  json.url raw_url(raw, format: :json)
end
