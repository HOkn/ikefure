json.array!(@faces) do |face|
  json.extract! face, :id, :user_id, :raw_id, :filename
  json.url face_url(face, format: :json)
end
