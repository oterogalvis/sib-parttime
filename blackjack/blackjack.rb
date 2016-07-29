require "./deck.rb"
require "./player.rb"
require "./dealer.rb"

class Blackjack
	attr_accessor :player, :dealer
	def initialize
		puts "Welcome to Blackjack"
		@player = Player.new
		@dealer = Dealer.new
		print_screen
	end
	def ask_s(question)
		print question
		answer = gets.chomp
		return answer
	end
	def print_screen
		
	end
end

game = Blackjack.new