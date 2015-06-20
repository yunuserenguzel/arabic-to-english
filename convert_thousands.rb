def convert_thousands(value)
  if value > 999 && value < 1000000
    left_hand = value/1000
    right_hand = convert_number(value%1000)
    right_hand = " #{right_hand}" if right_hand
    "#{convert_number(left_hand)} thousand#{right_hand}"
  end
end