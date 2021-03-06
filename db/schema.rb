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

ActiveRecord::Schema.define(version: 20170323142201) do

  create_table "favors", force: :cascade do |t|
    t.string   "desc"
    t.integer  "juan_id"
    t.integer  "runner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "skill"
    t.integer  "pay"
  end

  create_table "juans", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "contact"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "address"
  end

  create_table "runners", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "contact"
    t.string   "username"
    t.string   "password"
    t.integer  "favor_id"
    t.boolean  "isAvailable"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "address"
    t.string   "skill"
    t.boolean  "hasTask"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
