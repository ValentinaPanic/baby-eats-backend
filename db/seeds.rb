# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Valentina", username: "valentinaP", password: "password")
User.create(name: "Srdan", username: "srdan", password: "password")
User.create(name: "Vuk", username: "vuk", password: "password")

week = Week.create(user_id: 3, notes: "Working on this app")
day= Day.create(date: Date.today, week_id: week.id)
meal = Meal.create(meal_type: "Lunch", day_id: day.id)
food = Food.create(name: "Avocado", meal_id: 1)