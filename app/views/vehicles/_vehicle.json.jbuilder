json.extract! vehicle, :id, :vin, :make, :model, :year, :seating_capacity, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
