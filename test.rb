@todo_items = ["soap","haus","meat","worns"]

def find_index(name)
	@todo_items.each do |item|
		if item == name
	        @found = true
	        @index = @todo_items.index(item)
	        break
		end
	end
	if @found
		return @index
	else
		return nil
	end
end

puts find_index("hauss")

