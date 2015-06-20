def convert_thousands(value)
  left_hand = value/1000
  right_hand = convert_number(value%1000)
  right_hand = " #{right_hand}" if right_hand
  thousands = left_hand == 1 ? ' thousand' : ' thousands'
  "#{convert_number(left_hand)}#{thousands}#{right_hand}"
end