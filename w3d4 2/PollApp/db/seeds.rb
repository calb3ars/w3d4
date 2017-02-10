# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Poll.delete_all
Question.delete_all
AnswerChoice.delete_all
Response.delete_all

User.create!(user_name: "Steve")
User.create!(user_name: "Andrew")
User.create!(user_name: "Gage")
User.create!(user_name: "Debra")

Poll.create!(title: "a/A Satisfaction", author_id: 1)

Question.create!(body: "Would you recommend app academy to a friend?", poll_id: 1)
Question.create!(body: "Do you like assessments?", poll_id: 1)
