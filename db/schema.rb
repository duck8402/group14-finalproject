# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_21_085632) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "authors", force: :cascade do |t|
    t.string "authorname"
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_places", force: :cascade do |t|
    t.integer "library_id", null: false
    t.integer "book_id", null: false
    t.integer "floor_id", null: false
    t.string "shelve"
    t.string "row"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_places_on_book_id"
    t.index ["floor_id"], name: "index_book_places_on_floor_id"
    t.index ["library_id"], name: "index_book_places_on_library_id"
  end

  create_table "book_reviews", force: :cascade do |t|
    t.integer "library_id", null: false
    t.integer "member_id", null: false
    t.integer "book_id", null: false
    t.integer "rating_id", null: false
    t.text "comment"
    t.date "reviewdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_reviews_on_book_id"
    t.index ["library_id"], name: "index_book_reviews_on_library_id"
    t.index ["member_id"], name: "index_book_reviews_on_member_id"
    t.index ["rating_id"], name: "index_book_reviews_on_rating_id"
  end

  create_table "books", force: :cascade do |t|
    t.integer "library_id", null: false
    t.string "bookid"
    t.string "title"
    t.integer "author_id", null: false
    t.string "isbn"
    t.string "publication_year"
    t.integer "genre_id", null: false
    t.text "description"
    t.string "avaibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["genre_id"], name: "index_books_on_genre_id"
    t.index ["library_id"], name: "index_books_on_library_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "departmentid"
    t.string "departmentname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "floors", force: :cascade do |t|
    t.string "floor_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genreid"
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.string "library_id"
    t.text "address"
    t.string "no_staff"
    t.integer "manager_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_libraries_on_manager_id"
  end

  create_table "loans", force: :cascade do |t|
    t.string "loanid"
    t.integer "library_id", null: false
    t.integer "member_id", null: false
    t.integer "book_id", null: false
    t.date "loan_date"
    t.date "due_date"
    t.date "return_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_loans_on_book_id"
    t.index ["library_id"], name: "index_loans_on_library_id"
    t.index ["member_id"], name: "index_loans_on_member_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "managerid"
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer "library_id", null: false
    t.string "memberid"
    t.string "name"
    t.date "date_of_birth"
    t.string "phone"
    t.string "membership_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_members_on_library_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.string "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.integer "library_id", null: false
    t.string "staffid"
    t.string "staffname"
    t.string "staffphone"
    t.string "salary"
    t.integer "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_staffs_on_department_id"
    t.index ["library_id"], name: "index_staffs_on_library_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "book_places", "books"
  add_foreign_key "book_places", "floors"
  add_foreign_key "book_places", "libraries"
  add_foreign_key "book_reviews", "books"
  add_foreign_key "book_reviews", "libraries"
  add_foreign_key "book_reviews", "members"
  add_foreign_key "book_reviews", "ratings"
  add_foreign_key "books", "authors"
  add_foreign_key "books", "genres"
  add_foreign_key "books", "libraries"
  add_foreign_key "libraries", "managers"
  add_foreign_key "loans", "books"
  add_foreign_key "loans", "libraries"
  add_foreign_key "loans", "members"
  add_foreign_key "members", "libraries"
  add_foreign_key "staffs", "departments"
  add_foreign_key "staffs", "libraries"
end
