# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories = ["Tinh Yeu","Gia Dinh","Kinh Te"]
authors = ["Long","Phong","Cuong"]

categories.each do |cate|
	Category.create(name:cate)
end

authors.each do |au|
	Author.create(name:au)
end

(1..20).each do |t|
	b = Book.new
	b.title = "Book #{t}"
	b.price = rand(20..99)
	b.description = "description #{t}"
	b.category_id = rand(1..3)
	b.author_id = rand(1..3)
	b.save
end