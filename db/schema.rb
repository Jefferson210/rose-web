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

ActiveRecord::Schema.define(version: 20161109213534) do

  create_table "colors", force: true do |t|
    t.string   "colorName"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genetic_banks", force: true do |t|
    t.string   "codeBreeder"
    t.string   "breeder"
    t.integer  "analysedYear"
    t.string   "status"
    t.string   "variety"
    t.integer  "numPlants"
    t.string   "picture"
    t.boolean  "scent"
    t.decimal  "headSize"
    t.integer  "petals"
    t.string   "steamLength"
    t.decimal  "production"
    t.decimal  "opening"
    t.text     "flowerAbnormality"
    t.string   "sheets"
    t.string   "hawthorn"
    t.string   "father"
    t.string   "mother"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
  end

  add_index "genetic_banks", ["color_id"], name: "index_genetic_banks_on_color_id"

end
