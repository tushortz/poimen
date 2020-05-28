# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
viewed_froms = ['YouTube', 'Facebook', 'Physical Church', 'Zoom', 'On a phone call']
shepherds = [
  { first_name: 'Taiwo', last_name: 'Kareem' },
  { first_name: 'Joy', last_name: 'Opabiyi' },
  { first_name: 'Chiku', last_name: 'Chinyama' },
  { first_name: 'Aladje', last_name: 'Mane' },
  { first_name: 'Alamin', last_name: 'Abiru' },
  { first_name: 'Elder Cameron', last_name: 'Erinle' },
  { first_name: 'Gloria', last_name: 'Boadi' },
]

puts "\nSTORING VIEWED_FROM DATA\n"
viewed_froms.each { |text| 
  ViewedFrom.create({ text: text })
  puts "- #{text} stored to database"
}

puts "\nSTORING SHEPHERD'S DATA\n"
shepherds.each { |s| 
  Shepherd.create(**s)
  puts "- #{s[:first_name]} #{s[:last_name]} stored to database"
}