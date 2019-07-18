#!/usr/bin/env ruby
require './lib/allergy_counter'

puts "Enter in a number to find out what kind of allergies you have"

score = gets.chomp.to_i
print "Your allergies are "
allergies = AllergyCounter.new(score).allergies
allergies.each_with_index do |allergy, index|
  print allergy
  if index < allergies.length - 2
    print ", "
  elsif index == allergies.length - 2
    if allergies.length == 2
      print " and "
    else
      print ", and "
    end
  else
    puts "."
  end
end
