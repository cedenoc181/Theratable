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

ActiveRecord::Schema[7.0].define(version: 2024_02_27_032826) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer "account_number"
    t.string "account_type"
    t.boolean "admin", default: false
    t.integer "user_id"
    t.integer "schedule_id"
    t.integer "flexologist_id"
    t.integer "client_id"
    t.integer "booking_id"
    t.integer "payment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string "status", default: "Not booked"
    t.boolean "paid"
    t.integer "credits_paid"
    t.boolean "credits_refunded", default: false
    t.integer "account_id"
    t.integer "schedule_id"
    t.integer "session_id"
    t.integer "flexologist_id"
    t.integer "client_id"
    t.integer "payment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "injuries"
    t.string "goals"
    t.integer "credits_available"
    t.integer "credit_balance"
    t.integer "account_id"
    t.integer "user_id"
    t.integer "session_id"
    t.integer "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flexologists", force: :cascade do |t|
    t.string "location"
    t.string "bio"
    t.text "experience"
    t.string "education"
    t.string "profile_pic"
    t.string "photo_gallery"
    t.integer "user_id"
    t.integer "schedule_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.date "date"
    t.string "status", default: "Due"
    t.integer "cost"
    t.string "service", default: "60 Min Assisted Stretch Session"
    t.integer "invoice_number"
    t.integer "applied_credits"
    t.integer "booking_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "star_time"
    t.string "end_time"
    t.string "date"
    t.integer "account_id"
    t.integer "flexologist_id"
    t.integer "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "duration"
    t.integer "credits_worth"
    t.boolean "credit_single", default: false
    t.boolean "credit_bundle", default: false
    t.integer "cost"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
