json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :event_id, :name, :tel
  json.url reservation_url(reservation, format: :json)
end
