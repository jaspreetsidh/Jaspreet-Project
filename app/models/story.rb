class Story < ApplicationRecord
  belongs_to :book
end


# validations
validations :title, presence; true
validations :content, presence; true
validations :author, presence; true
