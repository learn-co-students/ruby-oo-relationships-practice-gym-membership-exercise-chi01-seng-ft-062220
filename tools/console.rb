# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

apple = Gym.new("Apple")
banana = Gym.new("Banana")
cucumber = Gym.new("Cucumber")
date = Gym.new("Date")
earth = Gym.new("Earth")

gary = Lifter.new("gary", 420)
jenn = Lifter.new("jenn", 200)
mark = Lifter.new("mark", 120)
emma = Lifter.new("emma", 100)
milo = Lifter.new("milo", 242)

member_one = Membership.new(100, cucumber, milo)
member_two = Membership.new(25, date, milo)
member_three = Membership.new(50, banana, milo)
member_four = Membership.new(30, apple, jenn)
member_five = Membership.new(40, apple, emma)

mark.signup(apple, 22)














binding.pry

puts "Gains!"
