json.array!(@events) do |event|
  json.extract! event, :id, :name, :date, :start_time, :end_time, :venue, :street_address, :city, :state, :zip, :website, :description
  json.url event_url(event, format: :json)
end
