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

ActiveRecord::Schema.define(version: 20150108153259) do

  create_table "meals", force: true do |t|
    t.string   "title"
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.date     "date"
    t.text     "meal_details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workouts", force: true do |t|
    t.string   "title"
    t.string   "workout_type"
    t.integer  "duration"
    t.string   "intensity"
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.date     "date"
    t.text     "workout_details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
