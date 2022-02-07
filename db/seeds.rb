# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
  { username: "johndoe", first_name: "John", last_name: "Doe", email: "john@test.com", password: "passowrd" }, 
  { username: "janesmith", first_name: "Jane", last_name: "Smith", email: "jane@test.com", password: "passowrd" }, 
  { username: "suebaker", first_name: "Sue", last_name: "Baker", email: "sue@test.com", password: "passowrd" }, 
  ])

