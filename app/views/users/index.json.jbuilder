json.array!(@users) do |user|
  json.extract! user, :id, :firstName, :lastName, :phoneNumber
  json.url user_url(user, format: :json)
end
