# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_30_145851) do
  create_table "companies", force: :cascade do |t|
    t.string "business_name"
    t.string "owner_name"
    t.string "phone_primary"
    t.string "email"
    t.string "ein"
    t.string "insurance_policy_number"
    t.string "insurance_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies_drivers", id: false, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "driver_id", null: false
    t.index ["company_id", "driver_id"], name: "index_companies_drivers_on_company_id_and_driver_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "phone_primary"
    t.string "license"
    t.boolean "cdl"
    t.boolean "concealed_weapons"
    t.boolean "armed_security"
    t.boolean "background_verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "nickname"
  end

  create_table "event_stage_changes", force: :cascade do |t|
    t.integer "event_id", null: false
    t.string "type"
    t.json "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_stage_changes_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "mileage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id", null: false
    t.integer "vehicle_id", null: false
    t.integer "driver_id", null: false
    t.integer "checkout_inspection_id"
    t.integer "checkin_inspection_id"
    t.index ["checkin_inspection_id"], name: "index_events_on_checkin_inspection_id"
    t.index ["checkout_inspection_id"], name: "index_events_on_checkout_inspection_id"
    t.index ["company_id"], name: "index_events_on_company_id"
    t.index ["driver_id"], name: "index_events_on_driver_id"
    t.index ["vehicle_id"], name: "index_events_on_vehicle_id"
  end

  create_table "inspections", force: :cascade do |t|
    t.integer "exterior_cleanliness"
    t.integer "interior_cleanliness"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vin"
    t.string "make"
    t.string "model"
    t.string "year"
    t.integer "seating_capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "event_stage_changes", "events"
  add_foreign_key "events", "companies"
  add_foreign_key "events", "drivers"
  add_foreign_key "events", "inspections", column: "checkin_inspection_id"
  add_foreign_key "events", "inspections", column: "checkout_inspection_id"
  add_foreign_key "events", "vehicles"
end
