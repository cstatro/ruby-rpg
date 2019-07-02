require_relative './environment.rb'
require 'pry'




hero1 = Warrior.new("Squee")
hero2 = Warrior.new("Cloud")
slime1 = Slime.new("Fetid Slime")
slime2 = Slime.new("Fetid Slime")
slime3 = Slime.new("Fetid Slime")
slime4 = Slime.new("Fetid Slime")

battle1 = Battle.new(hero1,slime1)
battle2 = Battle.new(hero1,slime2)
battle3 = Battle.new(hero1,slime3)
battle4 = Battle.new(hero2,slime4)

battle1.auto_battle
# battle2.auto_battle
# battle3.auto_battle
# battle4.auto_battle






binding.pry

standard_load
puts ''
puts ["Nothing personal kid...","hehe not bad you made me use 10% of my power.", "this isn't even my final form","What a shame..."].sample