json.array!(@users) do |user|
  json.extract! user, :id, :name, :facebook_user_id
  json.url user_url(user, format: :json)
end
