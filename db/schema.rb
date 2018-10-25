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

ActiveRecord::Schema.define(version: 2018_10_25_193928) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "postal_code"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "mygossip_id"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_comments_on_comment_id"
    t.index ["mygossip_id"], name: "index_comments_on_mygossip_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.integer "mygossip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_likes_on_comment_id"
    t.index ["mygossip_id"], name: "index_likes_on_mygossip_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "mygossips", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mygossips_on_user_id"
  end

  create_table "mygossips_tags", id: false, force: :cascade do |t|
    t.integer "tag_id", null: false
    t.integer "mygossip_id", null: false
    t.index ["tag_id", "mygossip_id"], name: "index_mygossips_tags_on_tag_id_and_mygossip_id"
  end

  create_table "privatemessages", force: :cascade do |t|
    t.text "content"
    t.integer "recipient_id"
    t.integer "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_privatemessages_on_recipient_id"
    t.index ["sender_id"], name: "index_privatemessages_on_sender_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "description"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
