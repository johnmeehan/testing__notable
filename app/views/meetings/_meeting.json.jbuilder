json.extract! meeting, :id, :title, :address, :date, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
