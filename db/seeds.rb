# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Default admin user
admin= User.create(:username => "Jefferson", :email => "morochoji5@hotmail.com", :password => "admin2016", :password_confirmation => "admin2016", :role => "administrador")