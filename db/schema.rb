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

ActiveRecord::Schema.define(version: 20190416132817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "activities", force: :cascade do |t|
    t.text "image"
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "admissions", force: :cascade do |t|
    t.text "image"
    t.text "FirstName"
    t.text "OtherName"
    t.text "PlaceOfBirth"
    t.text "ResidentPlace"
    t.date "DateOfBirth"
    t.date "LegalRegDate"
    t.string "Orphan"
    t.text "PreviousSchool"
    t.string "level"
    t.text "FatherName"
    t.text "FatherId"
    t.text "FatherPhone"
    t.text "MotherName"
    t.text "MotherId"
    t.text "MotherPhone"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_admissions_on_user_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "image"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "admin_user_id"
    t.index ["admin_user_id"], name: "index_articles_on_admin_user_id"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "besteachers", force: :cascade do |t|
    t.text "image"
    t.text "name"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment10s", force: :cascade do |t|
    t.bigint "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comment10s_on_user_id"
  end

  create_table "comment11s", force: :cascade do |t|
    t.bigint "post_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comment11s_on_post_id"
  end

  create_table "comment1s", force: :cascade do |t|
    t.bigint "performer_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["performer_id"], name: "index_comment1s_on_performer_id"
  end

  create_table "comment2s", force: :cascade do |t|
    t.bigint "teacher_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_comment2s_on_teacher_id"
  end

  create_table "comment3s", force: :cascade do |t|
    t.bigint "staff_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["staff_id"], name: "index_comment3s_on_staff_id"
  end

  create_table "comment4s", force: :cascade do |t|
    t.bigint "primary_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["primary_id"], name: "index_comment4s_on_primary_id"
  end

  create_table "comment5s", force: :cascade do |t|
    t.bigint "maternaire_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maternaire_id"], name: "index_comment5s_on_maternaire_id"
  end

  create_table "comment6s", force: :cascade do |t|
    t.bigint "publication_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publication_id"], name: "index_comment6s_on_publication_id"
  end

  create_table "comment7s", force: :cascade do |t|
    t.bigint "besteacher_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["besteacher_id"], name: "index_comment7s_on_besteacher_id"
  end

  create_table "comment8s", force: :cascade do |t|
    t.bigint "activity_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_comment8s_on_activity_id"
  end

  create_table "comment9s", force: :cascade do |t|
    t.bigint "admission_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admission_id"], name: "index_comment9s_on_admission_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "article_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_conversations_on_recipient_id"
    t.index ["sender_id", "recipient_id"], name: "index_conversations_on_sender_id_and_recipient_id", unique: true
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "admin_user_id"
    t.integer "post_id"
    t.integer "article_id"
    t.integer "performer_id"
    t.integer "publication_id"
    t.integer "staff_id"
    t.integer "teacher_id"
    t.integer "admission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favoritings", force: :cascade do |t|
    t.integer "favoriter_id"
    t.integer "favorited_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["favorited_id"], name: "index_favoritings_on_favorited_id"
    t.index ["favoriter_id", "favorited_id"], name: "index_favoritings_on_favoriter_id_and_favorited_id", unique: true
    t.index ["favoriter_id"], name: "index_favoritings_on_favoriter_id"
  end

  create_table "maternaires", force: :cascade do |t|
    t.string "title"
    t.text "image"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.bigint "admin_user_id"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id"], name: "index_messages_on_admin_user_id"
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "nurseries", force: :cascade do |t|
    t.text "image"
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performers", force: :cascade do |t|
    t.string "title"
    t.text "image"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "image"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "admin_user_id"
    t.index ["admin_user_id"], name: "index_posts_on_admin_user_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "primaries", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string "title"
    t.text "image"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.text "image"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.text "image"
    t.text "name"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.text "firstname"
    t.text "lastname"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "image"
    t.string "email"
    t.string "password_digest"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "admissions", "users"
  add_foreign_key "articles", "admin_users"
  add_foreign_key "articles", "users"
  add_foreign_key "comment10s", "users"
  add_foreign_key "comment11s", "posts"
  add_foreign_key "comment1s", "performers"
  add_foreign_key "comment2s", "teachers"
  add_foreign_key "comment3s", "staffs"
  add_foreign_key "comment4s", "primaries"
  add_foreign_key "comment5s", "maternaires"
  add_foreign_key "comment6s", "publications"
  add_foreign_key "comment7s", "besteachers"
  add_foreign_key "comment8s", "activities"
  add_foreign_key "comment9s", "admissions"
  add_foreign_key "comments", "articles"
  add_foreign_key "messages", "admin_users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "posts", "admin_users"
  add_foreign_key "posts", "users"
end
