# Seed for the creation of fake data
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

category = %w[chinese italian japanese french belgian]
5.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name,
                                  address: Faker::Address.street_address,
                                  category: category.sample)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
