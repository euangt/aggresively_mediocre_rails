User.destroy_all
Portfolio.destroy_all
Project.destroy_all

puts "Seeding Users"
user1 = User.create!(email: "ilia@ilia.com", password: "123456", name: "Ilia Columbini", celebrity: true )
user2 = User.create!(email: "euan@euan.com", password: "123456", name: "Euan GT", celebrity: true )
user3 = User.create!(email: "test@test.com", password: "123456", name: "testy", celebrity: false )
user4 = User.create!(email: "testy@testy.com", password: "123456", name: "testy", celebrity: false )

puts "Seeding Portfolios"
portfolio1 = Portfolio.create!(user: user1)
portfolio2 = Portfolio.create!(user: user2)
portfolio3 = Portfolio.create!(user: user3)
portfolio4 = Portfolio.create!(user: user4)

puts "Seeding Projects"
project1 = Project.create!(portfolio: portfolio1, name: "Ilia's Project 1", description: "lorem ipsum", github_url: "https://github.com/euangt/aggresively_mediocre_rails", user: user1)
project2 = Project.create!(portfolio: portfolio1, name: "Ilia's Project 2", description: "lorem ipsum", github_url: "https://github.com/euangt/aggresively_mediocre_rails", user: user1)

project3 = Project.create!(portfolio: portfolio2, name: "Euan's Awesome Project 1", description: "lorem ipsum", github_url: "https://github.com/euangt/aggresively_mediocre_rails", user: user2)
project4 = Project.create!(portfolio: portfolio2, name: "Euan's Awesome Project 2", description: "lorem ipsum", github_url: "https://github.com/euangt/aggresively_mediocre_rails", user: user2)

project5 = Project.create!(portfolio: portfolio3, name: "Test's Project 1", description: "lorem ipsum", github_url: "https://github.com/euangt/aggresively_mediocre_rails", user: user3)
project6 = Project.create!(portfolio: portfolio3, name: "Test's Project 2", description: "lorem ipsum", github_url: "https://github.com/euangt/aggresively_mediocre_rails", user: user3)

project7 = Project.create!(portfolio: portfolio4, name: "Testy's Project 1", description: "lorem ipsum", github_url: "https://github.com/Testygt/aggresively_mediocre_rails", user: user4)
project8 = Project.create!(portfolio: portfolio4, name: "Euan's Project 2", description: "lorem ipsum", github_url: "https://github.com/euangt/aggresively_mediocre_rails", user: user4)