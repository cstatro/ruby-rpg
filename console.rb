require_relative './environment.rb'
require 'pry'




hero1 = Warrior.new("Squee")
slime1 = Slime.new("Fetid Slime")

battle1 = Battle.new(hero1,slime1)




binding.pry

standard_load
puts ''
puts ["Nothing Personal Kid...","hehe not bad you made me use 10% of my power.", "this isn't even my final form"].sample