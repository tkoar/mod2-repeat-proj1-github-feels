# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

daniel = User.create(name: 'dirtyDan', email: 'dannyboy@gmail.de', password: 'dragons')
terrance = User.create(name: 'terrificTerry', email: 'terrance@gmail.com', password: 'dragons')

repo1 = Repo.create(repo_name: 'meat_bags_study', language: 'python')
daniel.repos << repo1
repo2 = Repo.create(repo_name: 'gamer_games', language: 'C#')
terrance.repos << repo2

dannyFeeling = Feeling.new(feeling_content: "meat bags are gross")
repo1.feelings << dannyFeeling
daniel.feelings << dannyFeeling

terrFeeling = Feeling.new(feeling_content: "r/front_page here we come")
repo2.feelings << terrFeeling
terrance.feelings << terrFeeling
