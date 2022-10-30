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

ActiveRecord::Schema.define(version: 2022_10_30_022611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rinks", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skater_skates", force: :cascade do |t|
    t.bigint "skate_id", null: false
    t.bigint "skater_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skate_id"], name: "index_skater_skates_on_skate_id"
    t.index ["skater_id"], name: "index_skater_skates_on_skater_id"
  end

  create_table "skaters", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "skate_id"
    t.integer "skill_level"
    t.string "position"
    t.string "user_name"
    t.string "city"
    t.string "last_level"
    t.string "years"
    t.index ["skate_id"], name: "index_skaters_on_skate_id"
  end

  create_table "skates", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date"
    t.string "host"
    t.boolean "public"
    t.bigint "rink_id", null: false
    t.index ["rink_id"], name: "index_skates_on_rink_id"
  end

  add_foreign_key "skater_skates", "skaters"
  add_foreign_key "skater_skates", "skates"
  add_foreign_key "skates", "rinks"
end
