romans = {1000 => 'M',
          900 => 'CM',
          500 => 'D',
          400 => 'CD',
          100 => 'C',
          90 => 'XC',
          50 => 'L',
          40 => 'XL',
          10 => 'X',
          9 => 'IX',
          5 => 'V',
          4 => 'IV',
          1 => 'I',
}

puts "Tell me a number and I'll tell you it in a Roman numeral"

get_number = gets.chomp.to_i
number = get_number
answer = ''

while number > 0
  romans.each_pair do |key,value|
    while key <= number
      answer += value
      number = number - key
    end
  end
end
p answer
# find the roman key less than the number, subtract key from number, add value to answer string