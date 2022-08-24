# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

20.times do
  User.create(Faker::Internet.user('username', 'email', 'password'))
end

50.times do
  Event.create(creator_id: rand(1..20), location: Faker::Address.city, date: Faker::Date.between(from: '2014-09-23', to: '2025-09-25'),
               status: %w[private public].sample, body: Faker::Hipster.paragraph, title: Faker::Commerce.department)
end

100.times do
  EventAttending.create(attendee_id: rand(1..20), attended_event_id: rand(1..50))
end
