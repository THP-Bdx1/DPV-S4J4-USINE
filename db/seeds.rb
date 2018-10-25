# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
#     assembly = AssemblyPart.create!()
# end


number =1
5.times do 
    assembly = Assembly.create!(name: "Assembly #{number}")
    number +=1
end


10.times do 
    part = Part.create!(part_number: "#{Random.rand(1..1000)}")
end


20.times do
    Assembly.find(Random.rand(1..5)).parts << Part.find(Random.rand(1..10))
end