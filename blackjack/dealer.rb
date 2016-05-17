require "./deck.rb"

class Dealer
	attr_reader :name
	attr_accessor :hand, :points, :playing
	def initialize
		@name = "Dealer"
		@hand = Array.new
		@points = 0
		@playing = true
	end
	def hit(deck)
		card = deck.pop
	    @hand.push(card)
	    @points += card.values[0]
	end
end

# dealer = Dealer.new
# puts dealer.name
# puts dealer.hand.inspect
# puts dealer.points

# dealer.hit(@deck)
# dealer.hit(@deck)
# dealer.hit(@deck)

# puts dealer.name
# puts dealer.hand.inspect
# puts dealer.points