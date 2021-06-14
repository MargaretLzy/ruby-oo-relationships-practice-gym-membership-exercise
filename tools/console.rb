# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
require 'pry'
g1 = Gym.new("IMG academy")
g2= Gym.new("Gym Hero")
g3 = Gym.new("Kadio Work")

l1= Lifter.new("Lisa", 50)
l2= Lifter.new("Anna", 25)
l3 = Lifter.new("Tiger Woods", 100)

m1= Membership.new(100,l1,g1)
m2 = Membership.new(75, l1,g2)
m3 = Membership.new(25,l3,g1)
m4=  Membership.new(500,l2,g3)
m5 = Membership.new(50, l3,g3)

binding.pry

puts "Gains!"
