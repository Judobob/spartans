json.array!(@event_users_linkings) do |event_details_linking|
  json.extract! event_details_linking, :id, :user_id, :integer, :event_detail_id, :venue, :max_participants
  json.url event_details_linking_url(event_details_linking, format: :json)
end
