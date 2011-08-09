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

ActiveRecord::Schema.define(:version => 20110809062818) do

  create_table "inventories", :force => true do |t|
    t.string   "name"
    t.integer  "quantity"
    t.decimal  "cost_price",    :precision => 10, :scale => 2
    t.string   "supplier"
    t.datetime "purchased_at"
    t.datetime "received_at"
    t.decimal  "exchange_rate", :precision => 8,  :scale => 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.string   "cust_name"
    t.string   "cust_contact_no"
    t.string   "cust_address"
    t.decimal  "post_paid",       :precision => 10, :scale => 2
    t.decimal  "post_cost",       :precision => 10, :scale => 2
    t.decimal  "post_diff",       :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
