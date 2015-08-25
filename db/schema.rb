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

ActiveRecord::Schema.define(version: 20150824080244) do

  create_table "newpfs", force: :cascade do |t|
    t.string   "performancename"
    t.string   "briefaddress"
    t.text     "performancenameinfo"
    t.string   "my_image"
    t.string   "musical"
    t.string   "play"
    t.string   "concert"
    t.string   "classic"
    t.string   "jeonsi"
    t.string   "sport"
    t.string   "busking"
    t.string   "amateur"
    t.string   "etc"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
