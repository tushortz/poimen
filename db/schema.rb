# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_27_093307) do

  create_table "attendances", force: :cascade do |t|
    t.string "full_name"
    t.integer "viewed_from_id", null: false
    t.integer "shepherd_id", null: false
    t.integer "total_attendance", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_first_timer", default: false, null: false
    t.integer "event_id", null: false
    t.index "\"event\", \"full_name\"", name: "index_attendances_on_event_and_full_name"
    t.index ["event_id"], name: "index_attendances_on_event_id"
    t.index ["shepherd_id"], name: "index_attendances_on_shepherd_id"
    t.index ["viewed_from_id"], name: "index_attendances_on_viewed_from_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shepherds", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_no"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "shepherd_id"
    t.index ["shepherd_id"], name: "index_users_on_shepherd_id"
  end

  create_table "viewed_froms", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "attendances", "events"
  add_foreign_key "attendances", "shepherds"
  add_foreign_key "attendances", "viewed_froms"
  add_foreign_key "users", "shepherds"
end
