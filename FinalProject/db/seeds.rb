# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





User.create(name: 'danny', email: 'danny@gmail.com', password: '1', gender:'male')
User.create(name: 'bob', email: 'bob@gmail.com', password: '1', gender:'male')
User.create(name: 'serena', email: 'serena@gmail.com', password: '1', gender:'female')
Category.create(name: 'Gifts')
Category.create(name: 'Videos')
Category.create(name: 'Architecture')
Category.create(name: 'Animals')
Category.create(name: 'Art')
Category.create(name: 'Cars & Motorcycles')
Category.create(name: 'Celebrities')
Category.create(name: 'DIY & Crafts')
Category.create(name: 'Design')
Category.create(name: 'Education')
Category.create(name: 'Film, Music & Books')
Category.create(name: 'Food & Drink')
Category.create(name: 'Gardening')
Category.create(name: 'Geek')
Category.create(name: 'Hair & Beauty')
Category.create(name: 'Health & Fitness')
Category.create(name: 'History')
Category.create(name: 'Holidays & Event')
Category.create(name: 'Home Decor')
Category.create(name: 'Humor')
Category.create(name: 'Sport')
Category.create(name: 'Outdoors')
Category.create(name: 'Products')
Category.create(name: 'Travel')
