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

ActiveRecord::Schema.define(version: 20161110032206) do

  create_table "colors", force: :cascade do |t|
    t.string   "colorName",  limit: 255
    t.string   "code",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genetic_banks", force: :cascade do |t|
    t.string   "codeBreeder",          limit: 255
    t.string   "breeder",              limit: 255
    t.integer  "analysedYear"
    t.string   "status",               limit: 255
    t.string   "variety",              limit: 255
    t.integer  "numPlants"
    t.boolean  "scent"
    t.decimal  "headSize"
    t.integer  "petals"
    t.string   "steamLength",          limit: 255
    t.decimal  "production"
    t.decimal  "opening"
    t.text     "flowerAbnormality"
    t.string   "sheets",               limit: 255
    t.string   "hawthorn",             limit: 255
    t.string   "father",               limit: 255
    t.string   "mother",               limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "genetic_banks", ["color_id"], name: "index_genetic_banks_on_color_id"

end
