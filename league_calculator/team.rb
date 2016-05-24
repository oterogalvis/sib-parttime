class Team
	attr_reader :name
	attr_accessor :score
	def initialize(name)
		@name = name
		@score = 0
	end
	def win
		@score += 3
	end
	def tie
		@score +=1
	end
	def print_team
		"Team: #{name}".ljust(30) + "Score: #{score}".rjust(10)
	end
end
