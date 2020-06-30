# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

ballys = Gym.new("Bally's")
la_fitness = Gym.new("LA Fitness")
planet_fitness = Gym.new("Planet Fitness")
x_sport = Gym.new("X Sport Fitness")
equinox = Gym.new("Equinox")
soul_cycle = Gym.new("Soul Cycle")

janet = Lifter.new("Janet", 250)
luca = Lifter.new("Luca", 200)
nico = Lifter.new("Nico", 100)
mandy = Lifter.new("Mandy", 50)

luca.new_member(40, ballys)
luca.new_member(40, la_fitness)
janet.new_member(30, la_fitness)
nico.new_member(40, ballys)
nico.new_member(600, equinox)
mandy.new_member(25, planet_fitness)

Lifter.average_total

binding.pry

puts "Gains!"
