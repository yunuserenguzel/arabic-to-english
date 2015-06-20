def convert_hundreds(value)
  if value > 99 && value < 1000
    left_digit = (value/100)
    right_hand = convert_number(value%100)
    right_hand = " #{right_hand}" if right_hand
    "#{convert_digit(left_digit)} hundred#{right_hand}"
  end
end