def numbers_doubled(number)
  doubled_card_numbers = []
  card_numbers = number.reverse.split("")
  card_numbers.each_with_index do |number, index|
    if index.odd?
      double = number.to_i * 2
      doubled_card_numbers << double
    else
      doubled_card_numbers << number.to_i
    end
  end
  doubled_card_numbers
end

def digit_inspect_and_sum(number)
  number.map do |digit|
    if digit > 9
      digit - 9
    else
      digit
    end
  end
end

def sum_digits(number)
  sum = 0
  number.map do |digit|
    sum += digit
  end
  sum % 10 == 0
end

card_number = "4929735477250543"

p sum_digits(digit_inspect_and_sum(numbers_doubled(card_number)))


#
# card_numbers = card_number.reverse.split("")
#
# doubled_card_numbers = []
#
# card_numbers.each_with_index do |number, index|
#   if index.odd?
#     double = number.to_i * 2
#     doubled_card_numbers << double
#   else
#     doubled_card_numbers << number.to_i
#   end
# end
#
# puts doubled_card_numbers.inspect
#
# new_array = doubled_card_numbers.map do |double|
#   if double > 9
#     double - 9
#   else
#     double
#   end
# end
#
# puts new_array.inspect
#
# sum = 0
# sum_array = new_array.map do |digit|
#   sum += digit
# end
#
# puts sum
#
# if sum % 10 == 0
#   puts "The number is valid!"
# else
#   puts "The number is invalid!"
# end
