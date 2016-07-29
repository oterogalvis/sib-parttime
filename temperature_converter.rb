print "Please type c for Celsius. \nPlease type f for Fahrenheit.\n"
print "c/f: "
answer = gets.chomp.downcase

if answer == "c"
	print "Please type how much Celsius do you want to convert: "
	celsius = gets.to_i
	fahrenheit = (celsius * 9 / 5) + 32
	puts "#{celsius} Celsius is equal to #{fahrenheit} Fahrenheit."

elsif answer == "f"
	print "Please type how much Fahrenheit do you want to convert: "
	fahrenheit = gets.to_i
	celsius = (fahrenheit - 32) * 5 / 9
	puts "#{fahrenheit} Fahrenheit is equal to #{celsius} Celsius."
else
	print "Please type c or f.\n"
end