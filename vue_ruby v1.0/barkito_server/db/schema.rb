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

ActiveRecord::Schema[7.0].define(version: 2022_05_01_034931) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deals", force: :cascade do |t|
    t.string "deal_title"
    t.date "deal_start_date"
    t.date "deal_end_date"
    t.time "deal_start_time"
    t.time "deal_end_time"
    t.string "deal_description"
    t.integer "vendor_id"
    t.integer "deal_discount"
    t.string "deal_category"
    t.string "deal_subcategory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "performer_id"
    t.string "event_name"
    t.date "event_start_date"
    t.date "event_end_date"
    t.time "event_start_time"
    t.time "event_end_time"
    t.string "event_description"
    t.boolean "with_vendor"
    t.string "event_category"
    t.string "event_subcategory"
    t.integer "event_price"
    t.string "borough"
    t.string "street"
    t.string "city"
    t.integer "zip_code"
    t.string "neighborhood"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "menu_name"
    t.integer "vendor_id"
    t.string "menu_description"
    t.integer "menu_rank"
    t.string "menu_category"
    t.string "menu_subcategory"
    t.string "menu_region"
    t.integer "menu_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performers", force: :cascade do |t|
    t.string "performer_name"
    t.string "performer_description"
    t.string "performer_email"
    t.string "performer_website"
    t.integer "perfomer_rank"
    t.string "performers"
    t.string "performer_category"
    t.string "performer_subcategory"
    t.string "performer_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "queries", force: :cascade do |t|
    t.integer "user_id"
    t.date "query_start"
    t.time "query_start_time"
    t.date "query_end"
    t.time "query_end_time"
    t.string "neighborhood"
    t.integer "zip_code"
    t.string "city"
    t.date "date_start"
    t.date "date_end"
    t.boolean "vendor"
    t.boolean "event"
    t.boolean "performer"
    t.boolean "menu"
    t.string "category"
    t.string "subcategory"
    t.integer "ranking"
    t.string "sitting"
    t.boolean "user"
    t.string "user_name"
    t.string "vendor_name"
    t.string "event_name"
    t.integer "price_rank"
    t.integer "review_rank"
    t.string "deal_name"
    t.string "menu_name"
    t.string "deal_discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "reservation_name"
    t.string "reservation_description"
    t.string "reservation_category"
    t.string "reservation_subcategory"
    t.integer "reservation_number_people"
    t.date "reservation_date"
    t.time "reservation_time"
    t.integer "user_id"
    t.integer "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.string "review_title"
    t.string "review_description"
    t.string "review_response"
    t.integer "review_rank"
    t.integer "review_price_rank"
    t.date "review_date"
    t.integer "likes"
    t.integer "not_likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_events", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_friends", force: :cascade do |t|
    t.integer "user_id"
    t.integer "friends_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "borough"
    t.string "neighborhood"
    t.string "street"
    t.string "city"
    t.integer "zip_code"
    t.string "user_gender"
    t.string "user_description"
    t.date "user_date_of_birth"
    t.string "user_email"
    t.string "user_password_digest"
    t.boolean "vendor_admin"
    t.boolean "performer_admin"
    t.boolean "crew_member"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendor_followers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string "vendor_name"
    t.string "vendor_email"
    t.string "vendor_website"
    t.integer "vendor_phone_number"
    t.string "neighborhood"
    t.string "building_number"
    t.string "borough"
    t.string "street"
    t.string "city"
    t.integer "zip_code"
    t.string "vendor_category"
    t.string "vendor_subcategory"
    t.string "seating"
    t.string "crew"
    t.date "vendor_founded_date"
    t.string "vendor_accepted_payment"
    t.time "open_time"
    t.time "closing_time"
    t.string "working_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
