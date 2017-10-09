# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

employee1 = Employee.create(name: "John", age: 1)
employee2 = Employee.create(name: "Rachel", age: 2)

meeting1 = Meeting.create(title: 'Year End', address: 'Limerick')
meeting2 = Meeting.create(title: 'End of Year', address: 'Dublin')

employee1.notes.create()