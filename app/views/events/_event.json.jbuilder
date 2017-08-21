json.extract! event, :id, :name, :start_date, :start_local, :race_time, :finish_local, :value, :link, :created_at, :updated_at
json.url event_url(event, format: :json)
