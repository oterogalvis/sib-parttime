def song(index)
	while index > 0
		puts "#{index} bottles of beer on the wall, #{index} bottles of beer."
		index -=1
		puts "Take one down and pass it around, #{index} bottles of beer on the wall.\n\n"
	end
	puts "No more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall."
end


song(99)