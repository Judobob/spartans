json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :id, :first_name, :string,last_name, :string,user_name, :string,mobile, :string
  json.url user_profile_url(user_profile, format: :json)
end
