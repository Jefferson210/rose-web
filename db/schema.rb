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

ActiveRecord::Schema.define(version: 20161116054508) do

  create_table "children", force: :cascade do |t|
    t.integer  "crossing_id"
    t.integer  "numIndividuals"
    t.integer  "color_id"
    t.decimal  "headSize",           precision: 5, scale: 2
    t.integer  "numFlowering"
    t.integer  "numPetals"
    t.string   "form"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "children", ["color_id"], name: "index_children_on_color_id"
  add_index "children", ["crossing_id"], name: "index_children_on_crossing_id"

  create_table "colors", force: :cascade do |t|
    t.string   "colorName"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crossings", force: :cascade do |t|
    t.string   "codeCrossing"
    t.integer  "numCrossing"
    t.integer  "year"
    t.integer  "week"
    t.string   "effective"
    t.decimal  "percentageEffective"
    t.string   "dateHarvest"
    t.integer  "numSeed"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "father"
    t.string   "fatherPicture"
    t.string   "mother"
    t.string   "motherPicture"
  end

  create_table "genetic_banks", force: :cascade do |t|
    t.string   "codeBreeder"
    t.string   "breeder"
    t.integer  "analysedYear"
    t.string   "status"
    t.string   "variety"
    t.integer  "numPlants"
    t.boolean  "scent"
    t.decimal  "headSize"
    t.integer  "petals"
    t.string   "steamLength"
    t.decimal  "production"
    t.decimal  "opening"
    t.text     "flowerAbnormality"
    t.string   "sheets"
    t.string   "hawthorn"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "relationship"
    t.text     "remarks"
  end

  add_index "genetic_banks", ["color_id"], name: "index_genetic_banks_on_color_id"

  create_table "sowings", force: :cascade do |t|
    t.string   "origin"
    t.integer  "numSeed"
    t.decimal  "weight",      precision: 5, scale: 2
    t.integer  "week"
    t.boolean  "hydratation"
    t.date     "calendar"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "username"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
