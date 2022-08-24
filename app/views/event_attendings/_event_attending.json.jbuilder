json.extract! event_attending, :id, :attendee_id, :attended_event_id, :created_at, :updated_at
json.url event_attending_url(event_attending, format: :json)
