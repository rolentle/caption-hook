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

ActiveRecord::Schema.define(version: 20140226003105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hooks", force: true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "app"
    t.boolean  "user"
    t.boolean  "post_url"
    t.boolean  "head"
    t.boolean  "head_long"
    t.boolean  "git_log"
  end

  create_table "messages", force: true do |t|
    t.string   "app"
    t.string   "user"
    t.string   "url"
    t.string   "head"
    t.string   "head_long"
    t.text     "git_log"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
