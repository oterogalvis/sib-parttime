def huh()
	list_huh = ["HUH?!","SPEAK UP SONNY!"]
	huh_number = rand(0..1)
	gramma_huh = list_huh[huh_number]
	puts gramma_huh
end
def oh()
	randon_date = rand(1930..1980)
	puts "NO, NOT SINCE #{randon_date}!"
end
def bye(bye_number)
	bye_list = ["I LOVE YOU SON","GOD BLESS YOU","BYE DEAR"]
	puts bye_list[bye_number]
end
def deaf_gradma()
	index = 0
	while index < 3
		print "Talk to grantma: "
		message = gets.chomp
		if message == "BYE"
			bye(index)
			index += 1
		elsif message == message.upcase
			oh()
			index = 0
		else
			huh()
			index = 0
		end
	end
end

deaf_gradma()