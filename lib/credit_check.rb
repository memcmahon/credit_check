card_number = "4929735477250543"

valid = false

# Your Luhn Algorithm Here

#Seperate the digits
card_numbers = card_number.split("")

#2x every other digit from the right
doubled_card_numbers = []

card_numbers.each_with_index do |number, index|
  if index.odd?
    double = number.to_i * 2
    doubled_card_numbers << double
  else
    doubled_card_numbers << number.to_i
  end
end

puts doubled_card_numbers.inspect

#summed digits over 10

#results summed and modulo 10 = 0?


# Output
# If it is valid, print "The number is valid!"
# If it is invalid, print "The number is invalid!"
