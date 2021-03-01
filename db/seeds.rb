User.destroy_all
Portfolio.destroy_all
Project.destroy_all

user1 = User.new(email: "ilia@ilia.com", password: "123456", name: "Ilia Columbini", celebrity: true )
user2 = User.new(email: "euan@euan.com", password: "123456", name: "Euan GT", celebrity: true )
user3 = User.new(email: "test@test.com", password: "123456", name: "testy", celebrity: false )
user4 = User.new(email: "testy@testy.com", password: "123456", name: "testy", celebrity: false )