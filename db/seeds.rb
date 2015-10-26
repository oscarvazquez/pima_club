# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Size.create(att: 'small')
Size.create(att: 'medium')
Size.create(att: 'large')
Size.create(att: 'extra-large')

Color.create(att: 'white')
Color.create(att: 'black')
Color.create(att: 'grey')

Style.create(att: 'crewneck')
Style.create(att: 'vneck')

User.create(first_name: 'Oscar', last_name: 'Vazquez', email: "oscar@gmail.com", password: 'password', role: 'admin')
User.create(first_name: 'Oscar', last_name: 'Vazquez', email: "person@gmail.com", password: 'password', role: 'member')
