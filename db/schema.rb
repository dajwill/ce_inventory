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

ActiveRecord::Schema.define(version: 20150812201118) do

  create_table "check_out_histories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "check_out_histories", ["item_id"], name: "index_check_out_histories_on_item_id"
  add_index "check_out_histories", ["user_id"], name: "index_check_out_histories_on_user_id"

  create_table "check_outs", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "check_out_date"
    t.datetime "return_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "check_outs", ["item_id"], name: "index_check_outs_on_item_id"
  add_index "check_outs", ["user_id"], name: "index_check_outs_on_user_id"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.boolean  "checked_out"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "phone"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "admin"
  end

  create_table "waitlist_users", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "waitlist_id"
  end

  add_index "waitlist_users", ["user_id"], name: "index_waitlist_users_on_user_id"
  add_index "waitlist_users", ["waitlist_id"], name: "index_waitlist_users_on_waitlist_id"

  create_table "waitlists", force: :cascade do |t|
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "waitlists", ["item_id"], name: "index_waitlists_on_item_id"

end
