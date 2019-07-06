# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s1 = Student.create(name: "Alex", mod: 2)
s2 = Student.create(name: "Justin", mod: 2)
s3 = Student.create(name: "Tony", mod: 6)
s4 = Student.create(name: "Abdul", mod: 1)
s5 = Student.create(name: "Mohammad", mod: 1)

Duck.create(name: "quack", description: "Donald Duck", student: Student.all.sample)
Duck.create(name: "watup doc", description: "bugs bunny", student_id: s2.id)
Duck.create(name: "thump", description: "elmore", student_id: s3.id)
Duck.create(name: "vroom", description: "road runner", student_id: s4.id)
Duck.create(name: "dabadabadoo", description: "Fred Flinstone", student_id: s5.id)
