#
# author: Yunus Eren Guzel
# email: yunuserenguzel@gmail.com
# date: 20.06.2015
#
# Notes: the number conversion is implemented
# based on Mac's say command in the terminal
#
#

require './convert_hundreds'
require './convert_thousands'
require './convert_tens'
require './convert_digit'
require './convert_number'
number = ARGV[0].to_i
if number > 0
  puts "#{convert_number(number)}"
else
  puts 'zero'
end

