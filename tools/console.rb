require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


cult1 = Cult.new("Asskickers", "HTX", 2020, "Kick Ass")

follower1 = Follower.new("Justine", 32, "Be Kind")

bloodoath1 = Bloodoath.new("_2020-10-11_", cult1, follower1)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits