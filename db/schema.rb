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

ActiveRecord::Schema.define(version: 20160508103439) do

  create_table "articles", force: :cascade do |t|

    t.datetime "move_in_date"
     t.datetime "date_of_birth"
     t.datetime "date_of_marriage"
     t.datetime "date_of_issue"
     t.datetime "expired_date"
     t.datetime "date_of_issue_pass"
     t.datetime "expired_date_pass"
     t.string "new_address"
     t.string "new_postal_code"
     t.string "old_postal_code"
     t.string "old_address"
     t.string "surname"
     t.string "firstname"
     t.string "nationality"
     t.string "religion"
     t.string "marital_status"
     t.string "serial_number"
     t.string "place_of_issue"
     t.string "serial_number_pass"
     t.string "place_of_issue_pass"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.decimal  "lat",        precision: 9, scale: 7
    t.decimal  "long",       precision: 9, scale: 7
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "m_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "m_users", ["email"], name: "index_m_users_on_email", unique: true
  add_index "m_users", ["reset_password_token"], name: "index_m_users_on_reset_password_token", unique: true

end
