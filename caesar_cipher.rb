def cipher
	chart = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	print "Please insert the message you whant to encrypt/dencrypt: "
	get_code = gets.downcase.split(//)
	print "Please insert the key: "
	get_key = gets.chomp.to_i
	message_coded = Array.new
	get_code.each do |code_letter|
		if code_letter == " "
			message_coded.push(" ")
		else
			chart.each do |letter|
				if code_letter == letter
					letter_index = chart.index(letter)
					code_index = letter_index + get_key
					if code_index > 25
						code_index -= 26
					end
					letter_coded = chart[code_index]
					message_coded.push(letter_coded)
				end
			end
		end
	end
	puts message_coded.join("")
end
def times_cipher
	chart = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	print "Please insert the message you whant to dencrypt: "
	get_code = gets.downcase.split(//)
	25.times do |get_key|
			message_coded = Array.new
			get_code.each do |code_letter|
				if code_letter == " "
					message_coded.push(" ")
				else
					chart.each do |letter|
						if code_letter == letter
							letter_index = chart.index(letter)
							code_index = letter_index + get_key
							if code_index > 25
								code_index -= 26
							end
							letter_coded = chart[code_index]
							message_coded.push(letter_coded)
						end
					end
				end
			end
		puts "#{get_key}\t" + message_coded.join("")
	end
end
def main
	print "Do you want encrypt or dencrypt? (e/d)? "
	answer = gets.chomp.downcase
	if answer == "e"
		cipher
	elsif answer == "d"
		print "Do you have the Key? (y/n)"
		answer_two = gets.chomp.downcase
		if answer_two == "y"
			cipher			
		elsif answer_two == "n"
			times_cipher
		else
			print "Please type y or n\n"
		end
	else
		print "Please type e or d\n"
	end
end
main