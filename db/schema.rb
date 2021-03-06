# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160306084301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: true do |t|
    t.string   "name"
    t.integer  "base_cost"
    t.boolean  "discountable", default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", force: true do |t|
    t.integer  "item_id"
    t.integer  "reservation_id"
    t.integer  "percent_discount"
    t.integer  "dollar_discount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "tour_tools_id"
    t.string   "organizer_name"
    t.integer  "guest_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rivers", force: true do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
