# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180427170942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "armies_tables", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "armylists", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.text "unit_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "abilities"
    t.integer "movement"
    t.integer "range"
    t.integer "bs"
    t.integer "as"
    t.integer "willpower"
    t.integer "wounds"
    t.integer "leadership"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "army_id"
    t.integer "armor"
    t.integer "points"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "abilities"
    t.integer "attacks"
    t.integer "range"
    t.integer "damage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
