require "./deck.rb"

class Player
	attr_reader :name
	attr_accessor :hand, :points, :money, :playing, :bet
	def initialize
		@name = ask_s("What is your name? ")
		@hand = Array.new
		@points = 0
		@money = 2500
    @playing = true
	end
	def ask_s(question)
		print question
		answer = gets.chomp
		return answer
	end
  def ask_i(question)
    print question
    answer = gets.chomp.to_i
    return answer
  end
  def hit(deck)
    card = deck.pop
    @hand.push(card)
    @points += card.values[0]
  end 
  def stop
    playing = false
  end
  def bet
    @bet = ask_i("How much do you want to bet? ")
    @money = @money - @bet
  end
end

# player = Player.new
# player.hit(@deck)
# player.hit(@deck)
# puts player.hand
# player.bet
# puts player.money
# puts player.points