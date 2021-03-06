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

ActiveRecord::Schema.define(version: 2019_04_08_225855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "stats", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "deliveries_count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "watchers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "email_digest", null: false
    t.text "wallet_address_digest", null: false
    t.text "encrypted_email", null: false
    t.text "encrypted_wallet_address", null: false
    t.text "cursor"
    t.boolean "email_confirmed", default: false, null: false
    t.datetime "next_fetch", null: false
    t.datetime "last_result_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "encrypted_webhook_url"
    t.index ["email_digest", "wallet_address_digest"], name: "index_watchers_on_email_digest_and_wallet_address_digest", unique: true
  end

end
