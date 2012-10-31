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

ActiveRecord::Schema.define(:version => 20121030112201) do

  create_table "client_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "city"
    t.string   "town"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "client_group_id"
  end

  create_table "colors", :force => true do |t|
    t.integer  "family_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  add_index "colors", ["family_id"], :name => "index_colors_on_family_id"

  create_table "families", :force => true do |t|
    t.string   "name"
    t.decimal  "profit_margin"
    t.integer  "packaging_unit"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "family_groups", :force => true do |t|
    t.decimal  "profit_margin"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "family_id"
    t.integer  "client_group_id"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "photo"
    t.integer  "family_id"
    t.integer  "color_id"
    t.integer  "variety_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "products", ["color_id"], :name => "index_products_on_color_id"
  add_index "products", ["family_id"], :name => "index_products_on_family_id"
  add_index "products", ["variety_id"], :name => "index_products_on_variety_id"

  create_table "varieties", :force => true do |t|
    t.integer  "family_id"
    t.integer  "color_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  add_index "varieties", ["color_id"], :name => "index_varieties_on_color_id"
  add_index "varieties", ["family_id"], :name => "index_varieties_on_family_id"

end
