def convert_hundreds(value)
  left_digit = (value/100)
  hundreds = left_digit == 1 ? 'hundred' : 'hundreds'
  right_hand = convert_number(value%100)
  right_hand = "and #{right_hand}" if right_hand
  "#{convert_digit(left_digit)} #{hundreds} #{right_hand}"
end