# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
User.create(name: 'administrator', password: '123123', email: 'admin@gmail.com', loyaltyPoint: '0')

foods = [
	{ :name => "Tiny Hot Dogs", :type => :starters , :price => 7, :description => "Can't eat just one. Who came up with this idea, anyway?"},
	{ :name => "Onion Strands", :type => :starters, :price => 5, :description => "Like onion rings, only different."},
	{ :name => "Steak", :type => :entrees , :price => 27, :description => "The best steak this side of Hubbard St."},
	{ :name => "Aha Tuna Plate", :type => :entrees, :price => 17, :description => "Learn something new with every bite."},
	{ :name => "Soft Drinks", :type => :drinks, :price => 5, :description => "Who are we kidding? We only serve iced tea."},
	{ :name => "Beer", :type => :drinks, :price => 6 , :description => "Want your favorite local brew? Too bad. We don't have it." },
	{ :name => "Strawberry Cheesecake", :type => :desserts, :price => 8, :description => "The best cheesecake in Chicago."},
	{ :name => "M&M's", :type => :desserts, :price => 6, :description => "Plain or peanut."}
]

Food.destroy_all
foods.each do |food|
  f = Food.new
  f.name = food[:name]
  f.food_type = food[:type]
  f.price = food[:price]
  f.description = food[:description]
  f.save
end
