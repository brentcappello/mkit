json.array!(@marathons) do |marathon|
  json.extract! marathon, :id, :name, :description, :event_date, :city, :state, :country, :registration_url, :website_url, :logo, :image, :map
  json.url marathon_url(marathon, format: :json)
end
