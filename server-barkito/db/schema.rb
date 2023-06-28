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

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2022_05_03_163333) do
=======
ActiveRecord::Schema[7.0].define(version: 2022_05_09_025701) do
>>>>>>> 6d013a78 (next.js migration)
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_vendors", force: :cascade do |t|
    t.integer "user_id"
    t.integer "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
<<<<<<< HEAD
    t.string "user_name"
    t.string "user_borough"
    t.string "user_neighborhood"
    t.string "user_street"
    t.string "user_city"
    t.string "user_zip_code"
    t.string "gender"
    t.string "user_description"
    t.date "user_birth"
    t.string "user_email"
=======
    t.string "name"
    t.string "username"
    t.string "borough"
    t.string "neighborhood"
    t.string "street"
    t.string "city"
    t.integer "zip_code"
    t.string "gender"
    t.string "description"
    t.date "birth"
    t.string "email"
>>>>>>> 6d013a78 (next.js migration)
    t.string "password_digest"
    t.boolean "vendor_admin"
    t.boolean "performer_admin"
    t.boolean "crew_member"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
<<<<<<< HEAD
    t.string "vendor_name"
    t.string "vendor_email"
    t.string "vendor_website"
    t.integer "vendor_phone_number"
    t.string "vendor_neighborhood"
    t.string "building_number"
    t.string "vendor_borough"
    t.string "vendor_street"
    t.string "vendor_city"
    t.integer "zip_code"
    t.string "vendor_category"
    t.string "vendor_subcategory"
    t.string "seating"
    t.string "crew"
    t.date "vendor_founded_date"
    t.string "vendor_accepted_payment"
=======
    t.string "name"
    t.string "email"
    t.string "website"
    t.integer "phone_number"
    t.string "neighborhood"
    t.string "building_number"
    t.string "borough"
    t.string "street"
    t.string "city"
    t.integer "zip_code"
    t.string "category"
    t.string "subcategory"
    t.string "seating"
    t.string "crew"
    t.date "founded_date"
    t.string "accepted_payment"
>>>>>>> 6d013a78 (next.js migration)
    t.time "open_time"
    t.time "closing_time"
    t.string "working_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
