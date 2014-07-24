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

ActiveRecord::Schema.define(version: 20140724133310) do

  create_table "games", force: true do |t|
    t.string   "team_id"
    t.integer  "opponent_id"
    t.integer  "team_score"
    t.integer  "opponent_score"
    t.datetime "date"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_goals", force: true do |t|
    t.integer  "player_id"
    t.integer  "tournament_id"
    t.integer  "goals"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_team_tournaments", force: true do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.integer  "tournament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_tournaments", force: true do |t|
    t.integer  "team_id"
    t.integer  "tournament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tournaments", force: true do |t|
    t.integer  "year"
    t.integer  "semester"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
