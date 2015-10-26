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

ActiveRecord::Schema.define(version: 20151026031705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "att"
  end

  create_table "pictures", force: true do |t|
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_attributes", force: true do |t|
    t.integer  "facet_id"
    t.string   "facet_type"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_attributes", ["facet_id", "facet_type"], name: "index_product_attributes_on_facet_id_and_facet_type", using: :btree
  add_index "product_attributes", ["product_id"], name: "index_product_attributes_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "available"
    t.string   "shipping"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "att"
  end

  create_table "styles", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "att"
  end

  create_table "sub_pros", force: true do |t|
    t.integer  "subscription_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sub_pros", ["product_id"], name: "index_sub_pros_on_product_id", using: :btree
  add_index "sub_pros", ["subscription_id"], name: "index_sub_pros_on_subscription_id", using: :btree

  create_table "subscriptions", force: true do |t|
    t.decimal  "total_price"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.boolean  "confirmation"
    t.string   "confirm_token"
    t.string   "uid"
    t.string   "outh"
    t.string   "provider"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
