# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

companies = Company.create([
    { business_name: "Jeff's Company", owner_name: "Jeff Webb", phone_primary: "8133611739", email: 'webbwear@gmail.com', ein: "123-12-1123", insurance_policy_number: '42', insurance_phone: '8139119911' },
    { business_name: "Your Company", owner_name: "Jo Yo", phone_primary: "000-000-0000", email: 'webbwear@gmail.com', ein: "123-12-1123", insurance_policy_number: '42', insurance_phone: '8139119911' },
])
drivers = Driver.create([ 
    { first_name: "Jeff", last_name: "Webb", social_security: "123456789", phone_primary: "8133611739", license: "123456789", cdl: true, concealed_weapons: true, armed_security: true, background_verified: true },
 ])
# events = Event.create([ 
#     { start_time: "2022-07-06 17:30:58", end_time: "2022-07-06 17:30:58", mileage: 0, company_id: 1, vehicle_id: 1, driver_id: 1 },
# ])
vehicles = Vehicle.create([ 
    { make: "Toyota", model: "Corolla", year: 2022, vin: "123456789",},
])  



# "vehicles", force: :cascade do |t|
#     t.string "vin"
#     t.string "make"
#     t.string "model"
#     t.string "year"
#     t.integer "seating_capacity"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null