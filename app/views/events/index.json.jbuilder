json.array!(@events) do |event|
  json.extract! event, :id, :date, :name, :category, :ticket_count
  json.url event_url(event, format: :json)
end
