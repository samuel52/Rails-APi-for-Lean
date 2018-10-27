# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

phil = Person.create({name: "Phil"})
alfred = Person.create({name: "Alfred"})
phil.posts.create({title: "First Blog in town", body: "First Blog i have created with serializer"})
phil.posts.create({title: "Second Blog in Town", body: "Second Blog i have created with serializer"})
alfred.posts.create({title: "Third Blog in Town", body: "Second Blog i have created with serializer"})
alfred.posts.create({title: "Third Blog in Town", body: "Second Blog i have created with serializer"})
