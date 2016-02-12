json.array!(@users) do |user|
  json.extract! user, :id, :firstName, :lastName, :phoneNumber, :email, :street, :city, :state, :zip
  json.url user_url(user, format: :json)
end
