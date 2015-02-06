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

ActiveRecord::Schema.define(version: 20150206180225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "arabic_name",                 null: false
    t.string   "english_name",                null: false
    t.boolean  "is_active",    default: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string  "english_name"
    t.text    "arabic_name"
    t.integer "country_id"
  end

  create_table "classified_ads", force: :cascade do |t|
    t.boolean  "is_published", default: true
    t.boolean  "is_expired",   default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "title"
    t.text     "description"
    t.integer  "counrty_id"
    t.integer  "city_id"
  end

  add_index "classified_ads", ["category_id"], name: "index_classified_ads_on_category_id", using: :btree
  add_index "classified_ads", ["city_id"], name: "index_classified_ads_on_city_id", using: :btree
  add_index "classified_ads", ["counrty_id"], name: "index_classified_ads_on_counrty_id", using: :btree
  add_index "classified_ads", ["user_id"], name: "index_classified_ads_on_user_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.text     "english_name"
    t.text     "arabic_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "",    null: false
    t.string   "mobile_number"
    t.string   "city"
    t.string   "address"
    t.boolean  "is_active",              default: true
    t.boolean  "is_admin",               default: false
    t.boolean  "is_gold_member"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
