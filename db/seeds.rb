require 'csv'
require 'faker'

# Clear existing data
Book.destroy_all
Story.destroy_all


# Seed data from Faker for Stories
Book.all.each do |book|
  5.times do
    book.stories.create!(
      title: Faker::Book.title,
      content: Faker::Lorem.paragraphs(number: 5).join("\n\n"),
      author: Faker::Book.author
    )
  end
end

puts "Database has been seeded with books and stories!"
