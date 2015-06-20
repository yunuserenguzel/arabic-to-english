def convert_number(value = value.to_i)
  if value < 10
    convert_digit(value)
  elsif value < 100
    convert_tens(value)
  elsif value < 1000
    convert_hundreds(value)
  elsif value < 1000000
    convert_thousands(value)
  end
end