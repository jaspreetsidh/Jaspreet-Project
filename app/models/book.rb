class Book < ApplicationRecord
    has_many :stories, dependent: :destroy
end
