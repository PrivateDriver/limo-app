# json.extract! event, :id, :created_at, :updated_at
# json.url event_url(event, format: :json)


json.extract! event, :id
json.title event.client_name
json.start event.pickup
json.unconfirmed !event.driver
json.end event.dropoff || event.pickup + 2.hours