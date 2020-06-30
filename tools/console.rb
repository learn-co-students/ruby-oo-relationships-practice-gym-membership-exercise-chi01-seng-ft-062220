# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
arnold = Lifter.new("Arnold", 220)
golds = Gym.new("Golds")
gold_membership = Membership.new(80, arnold, golds)
planet_fitness = Gym.new("Planet Fitness")
black_card_membership = Membership.new(15, arnold, planet_fitness)
la_fitness = Gym.new("LA Fitness")
la_fit_membership = Membership.new(40, arnold, la_fitness)
sam = Lifter.new("Sam", 120)
black_card_founder = Membership.new(20, sam, planet_fitness)
sam.new_membership(40, la_fitness)

binding.pry

puts "Gains!"
