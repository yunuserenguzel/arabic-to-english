require './convert_hundreds'
require './convert_thousands'
require './convert_tens'
require './convert_digit'
require './convert_number'
number = ARGV[0].to_i
puts "#{convert_number(number)}"

