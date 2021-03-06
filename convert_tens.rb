def convert_tens(value)
  if value < 20
    case value
      when 10; 'ten'
      when 11; 'eleven'
      when 12; 'twelve'
      when 13; 'thirteen'
      when 14; 'fourteen'
      when 15; 'fifteen'
      when 16; 'sixteen'
      when 17; 'seventeen'
      when 18; 'eighteen'
      when 19; 'nineteen'
    end
  else
    digit = convert_digit(value%10)
    digit = " #{digit}" if digit
    left_hand =  left_hand(value)
    if left_hand
      "#{left_hand(value)}#{digit}"
    end
  end
end

def left_hand(value)
  if value < 30; 'twenty'
  elsif value < 40; 'thirty'
  elsif value < 50; 'forty'
  elsif value < 60; 'fifty'
  elsif value < 70; 'sixty'
  elsif value < 80; 'seventy'
  elsif value < 90; 'eighty'
  elsif value < 100; 'ninety'
  end
end
