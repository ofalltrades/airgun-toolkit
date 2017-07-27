json.data do
  json.array! @users do |user|
    json.id user.id.to_s

    json.attributes do
      json.(user, :first_name, :last_name, :username)
    end
  end
end
