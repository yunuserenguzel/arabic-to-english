def convert_hundreds(value)
  left_digit = (value/100)
  hundreds = left_digit == 1 ? 'hundred' : 'hundreds'
  two_steps = convert_tens(value%100)
  two_steps = "and #{two_steps}" if two_steps
  "#{convert_digit(left_digit)} #{hundreds} #{two_steps}"
end