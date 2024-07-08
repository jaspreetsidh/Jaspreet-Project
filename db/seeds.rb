require 'csv'
require 'faker'

# Clear existing data
Book.destroy_all
Story.destroy_all

# Seed data from books.csv
CSV.foreach(Rails.root.join('db', 'books.csv'), headers: true) do |row|
  Book.create!(
    bookID: row['bookID'],
    title: row['title'],
    authors: row['authors'],
    average_rating: row['average_rating'],
    isbn: row['isbn'],
    isbn13: row['isbn13'],
    language_code: row['language_code'],
    num_pages: row['num_pages'],
    ratings_count: row['ratings_count'],
    text_reviews_count: row['text_reviews_count'],
    publication_date: Date.strptime(row['publication_date'], '%m/%d/%Y'),
    publisher: row['publisher']
  )
end



puts "Database has been seeded with books and stories!"
