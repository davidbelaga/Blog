# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

def article
	20.times do
	  a = Faker::Book.title
	  b = Faker::ChuckNorris.fact
	  Article.create(title: a, content: b, category_id: rand(1..5))
	end
end

def category
	5.times do
	  c = Faker::Dessert.variety
	  Category.create(name: c)
	end
end


article
category