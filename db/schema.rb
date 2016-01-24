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

ActiveRecord::Schema.define(version: 20160124184749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groupings", force: :cascade do |t|
    t.integer "pellet_id", null: false
    t.integer "distance",  null: false
    t.decimal "size",      null: false
  end

  create_table "guns", force: :cascade do |t|
    t.string  "brand",      null: false
    t.string  "model",      null: false
    t.integer "generation"
    t.float   "caliber",    null: false
    t.string  "user_id",    null: false
  end

  create_table "pellets", force: :cascade do |t|
    t.string  "brand",         null: false
    t.string  "name",          null: false
    t.decimal "weight",        null: false
    t.decimal "caliber",       null: false
    t.decimal "diameter"
    t.decimal "velocity"
    t.decimal "muzzel_energy"
    t.string  "material"
    t.integer "rating"
    t.integer "gun_id",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name",     null: false
    t.string "username", null: false
    t.string "email",    null: false
  end

end