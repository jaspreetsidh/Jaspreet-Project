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

ActiveRecord::Schema[7.1].define(version: 2024_07_02_221644) do
  create_table "books", force: :cascade do |t|
    t.integer "bookID"
    t.string "title"
    t.string "authors"
    t.float "average_rating"
    t.string "isbn"
    t.string "isbn13"
    t.string "language_code"
    t.integer "num_pages"
    t.integer "ratings_count"
    t.integer "text_reviews_count"
    t.date "publication_date"
    t.string "publisher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.integer "book_id", null: false
    t.string "title"
    t.text "content"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_stories_on_book_id"
  end

  add_foreign_key "stories", "books"
end
