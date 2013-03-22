require "square-charger/version"

puts "--------------------------------------"
puts "---Welcome to the Square Calculator---"
puts "--------------------------------------"
 
# Output commas in large numbers
def comma_numbers(number, delimiter = ',')
  number.to_s.reverse.gsub(%r{([0-9]{3}(?=([0-9])))}, "\\1#{delimiter}").reverse
end
 
# Get Amount Owed
puts "\tHow much do you want to get paid?"
amount = gets.chomp # Read in from command line
 
# Is CC Present
puts "\tIs the credit card physically present? Enter Y or N"
ccPresent = gets.chomp
 
if ccPresent.downcase == "y" 	# CC is Present
  transactionFee = 0.0275
  total = amount.to_i / (1 - transactionFee)
else						# CC is Absent
  transactionFee = 0.035
  fixedFee = 0.15
  total = (amount.to_i + fixedFee) / (1 - transactionFee)
end
 
puts "The total amount to charge is: $#{ comma_numbers(total.round(2)) }"
