json.extract! event, :id, :name, :start_date, :race_time, :value, :link, :created_at, :updated_at
if event.start_local_id
    json.start_local Local.find(event.start_local_id)
end
if event.finish_local_id
    json.finish_local Local.find(event.finish_local_id)
end
json.url event_url(event, format: :json)
