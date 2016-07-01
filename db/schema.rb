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

ActiveRecord::Schema.define(version: 20160701030516) do

  create_table "abilities", force: true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "abilities_job_classes", id: false, force: true do |t|
    t.integer "job_class_id", null: false
    t.integer "ability_id",   null: false
  end

  create_table "abilities_skills", id: false, force: true do |t|
    t.integer "ability_id", null: false
    t.integer "skill_id",   null: false
  end

  create_table "backgrounds", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "skill_proficiencies"
    t.string   "tool_proficiencies"
    t.string   "languages"
    t.text     "equipment"
    t.text     "feature"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "backgrounds_skills", id: false, force: true do |t|
    t.integer "skill_id",      null: false
    t.integer "background_id", null: false
  end

  create_table "casein_admin_users", force: true do |t|
    t.string   "login",                           null: false
    t.string   "name"
    t.string   "email"
    t.integer  "access_level",        default: 0, null: false
    t.string   "crypted_password",                null: false
    t.string   "password_salt",                   null: false
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count",         default: 0, null: false
    t.integer  "failed_login_count",  default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_classes", force: true do |t|
    t.string   "name"
    t.boolean  "caster"
    t.string   "saving_throws"
    t.string   "skill_proficiencies"
    t.string   "hit_dice"
    t.string   "armor_proficiencies"
    t.string   "weapon_proficiencies"
    t.string   "tool_proficiencies"
    t.text     "equipment"
    t.text     "level_1_features"
    t.text     "level_2_features"
    t.text     "level_3_features"
    t.text     "level_4_features"
    t.text     "level_5_features"
    t.text     "level_6_features"
    t.text     "level_7_features"
    t.text     "level_8_features"
    t.text     "level_9_features"
    t.text     "level_10_features"
    t.text     "level_11_features"
    t.text     "level_12_features"
    t.text     "level_13_features"
    t.text     "level_14_features"
    t.text     "level_15_features"
    t.text     "level_16_features"
    t.text     "level_17_features"
    t.text     "level_18_features"
    t.text     "level_19_features"
    t.text     "level_20_features"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_classes_skills", id: false, force: true do |t|
    t.integer "job_class_id", null: false
    t.integer "skill_id",     null: false
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.string   "ability_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
