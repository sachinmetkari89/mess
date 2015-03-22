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

ActiveRecord::Schema.define(version: 20150322102644) do

  create_table "messowners", force: :cascade do |t|
    t.string   "messowner_first_name"
    t.string   "messowner_last_name"
    t.string   "messowner_mobile_no"
    t.string   "messowner_alt_mobile_no"
    t.string   "messowner_rate_per_month"
    t.string   "messowner_rate_per_tiffin"
    t.string   "messowner_time_morning_from"
    t.string   "messowner_time_morning_to"
    t.string   "messowner_time_evening_from"
    t.string   "messowner_time_evening_to"
    t.string   "messowner_address"
    t.string   "messowner_tiffin_cancle_time_morning"
    t.string   "messowner_tiffin_cancle_time_evening"
    t.string   "email",                                default: "", null: false
    t.string   "encrypted_password",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messowners", ["email"], name: "index_messowners_on_email", unique: true
  add_index "messowners", ["reset_password_token"], name: "index_messowners_on_reset_password_token", unique: true

end
