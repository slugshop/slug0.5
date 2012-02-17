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

ActiveRecord::Schema.define(:version => 20120217220534) do

  create_table "barracks", :force => true do |t|
    t.string   "rackName"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cadets", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.integer  "rack"
    t.integer  "roomnum"
    t.string   "company"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "itemName"
    t.integer  "itemType"
    t.integer  "itemOwner"
    t.boolean  "isAvailible"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "on_loans", :force => true do |t|
    t.integer  "loanTo"
    t.integer  "itemID"
    t.date     "dateStart"
    t.integer  "loanLength"
    t.boolean  "isActive"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
