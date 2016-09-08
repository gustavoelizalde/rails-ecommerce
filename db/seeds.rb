# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Order.destroy_all
Product.destroy_all
Category.destroy_all

#AdminUser.destroy_all

#AdminUser.create!(email:'gustavoelizalde@gmail.com',password:'123456',password_confirmation:'123456')

c = Category.create(name: "Teléfono")

galaxy_6 = Product.create(name: "Galaxy 6", stock: 10, category: c, created_at: Time.now - 1.day, price: 50 + 1)
galaxy_5 = Product.create(name: "Galaxy 5", stock: 5, category: c, created_at: Time.now - 2.day, price: 50 + 2)
galaxy_8 = Product.create(name: "Galaxy 8", stock: 10, category: c, created_at: Time.now - 3.day, price: 50 + 3)
galaxy_3 = Product.create(name: "Galaxy 3", stock: 5, category: c, created_at: Time.now - 4.day, price: 50 + 4)
iphone_6 = Product.create(name: "Iphone 6", stock: 10, category: c, created_at: Time.now, price: 100)

c = Category.create(name: "Notebooks")

Product.create(name: "Macbook Pro", stock: 20, category: c, created_at: Time.now + 1.day, price: 100)
Product.create(name: "Macbook Air", stock: 25, category: c, created_at: Time.now - 1.day, price: 100)
Product.create(name: "Sony Vaio", stock: 10, category: c, created_at: Time.now - 2.day, price: 100)

u = User.create(name: "Tomas", password: "123456")
u2 = User.create(name: "Rod", password: "123456")
u3 = User.create(name: "Oscar", password: "123456")
u4 = User.create(name: "Mati", password: "123456")


o = Order.create(user: u, product: galaxy_6)
o2 = Order.create(user: u2, product: galaxy_5)
o3 = Order.create(user: u3, product: galaxy_8)
o4 = Order.create(user: u4, product: iphone_6)