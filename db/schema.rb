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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120808033430) do

  create_table "memos", :force => true do |t|
    t.text     "text"
    t.integer  "music_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "musics", :force => true do |t|
    t.string   "file_name"
    t.string   "file_path"
    t.integer  "duration"
    t.integer  "date_added"
    t.integer  "date_modified"
    t.text     "file_info"
    t.text     "memo_self"
    t.string   "located_at"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "work_id"
  end

  create_table "work_memos", :force => true do |t|
    t.string   "text"
    t.integer  "work_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "works", :force => true do |t|
    t.string   "serial_num"
    t.integer  "music_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
