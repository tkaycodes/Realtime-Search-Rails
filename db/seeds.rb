# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#note multiple entries without faker can be created like this:
# Product.create ( [    {name:1, body:'dfa'}, {name:fsda, body:"ds"} ]   ) 
# that is , an array of hashes 


10.times do 
  @product = Product.create(name: Faker::Commerce.product_name, cost: Faker::Commerce.price, added: Faker::Date.forward(23));
  5.times do 
    @value=Faker::Commerce.price
    puts "#{@value}"
    @bid = @product.bids.create(value:@value+@product.cost, product_id:@product.id)
    puts "here is the new value #{@bid.value}"
  end
end




