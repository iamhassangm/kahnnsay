require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

libs = (0..10).map do
  {
    name: Faker::Address.community,
    membership: "The membership fee varies from PKR 3,500 (per year) to PKR 15,000 (per year).",
    location_id: 1
  }
end

Library.create(libs)

books = (0..100).map do 
  { title: Faker::Book.title,
    isbn: Faker::Code.isbn,
    author: Faker::Book.author,
    publisher: Faker::Book.publisher,
    published_in_year: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    library_ids: (0..Random.rand(1..10)).map {Random.rand(1..10)}
  }
end

Book.create(books)
