class Book < ApplicationRecord
    has_many :stories, dependent: :destroy
end


# validations
validations :title, presence; true
validations :author, presence; true
validations :average_rating, presence; true
validations :isbn, presence; true
validations :isbn13, presence; true
validations :language_code, presence; true
validations :num_pages, presence; true
validations :ratings_count, presence; true
validations :text_reviews_count, presence; true
validations :publication_date, presence; true
validations :publisher, presence; true
