# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Activity.destroy_all


Hang.create(user_id: 1, activity_id: 1)
Hang.create(user_id: 1, activity_id: 2)
Hang.create(user_id: 1, activity_id: 3)
Hang.create(user_id: 1, activity_id: 4)
Hang.create(user_id: 1, activity_id: 5)

Activity.create(name: 'Hockey')
Activity.create(name: 'Darts')
Activity.create(name: 'Board Games')
Activity.create(name: 'Pinball' )
Activity.create(name: 'Bird Watching')


User.create(name:'Gabe', username:'gabechaz', password: 'abc123')

puts 'Seeds complete, sir'