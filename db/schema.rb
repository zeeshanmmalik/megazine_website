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

ActiveRecord::Schema.define(:version => 20120730131523) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "body",       :limit => 2147483647
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "author"
    t.integer  "issue_id"
    t.boolean  "published",                        :default => false, :null => false
  end

  add_index "articles", ["issue_id"], :name => "index_articles_on_issue_id"
  add_index "articles", ["user_id"], :name => "index_articles_on_user_id"

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "images", :force => true do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "attached_image_file_name"
    t.string   "attached_image_content_type"
    t.integer  "attached_image_file_size"
    t.datetime "attached_image_updated_at"
  end

  add_index "images", ["imageable_type", "imageable_id"], :name => "image_owner_index"

  create_table "issues", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "price",         :default => "5.00", :null => false
    t.string   "currency_code", :default => "GBP",  :null => false
    t.boolean  "published",     :default => false,  :null => false
  end

  create_table "slides", :force => true do |t|
    t.string   "title"
    t.string   "page_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "published",  :default => false, :null => false
  end

end
