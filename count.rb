def count()
	number = 1

	while number <=100
		if number % 3 == 0 && number % 5 == 0
			puts "#{number} is a fizbang."
			number +=1
		elsif number % 5 == 0
			puts "#{number} is a bang"
			number +=1
		elsif number % 3 == 0
			puts "#{number} is a fiz."
			number +=1
		else
			puts "Just #{number}"
			number +=1
		end
	end
end
count()
