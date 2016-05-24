require "./team.rb"

class League
	attr_accessor :games, :teams
	def initialize
		@games = Array.new
		@teams = Array.new
		main
	end
	def main
		answer = "Y"
		while answer == "Y"
			score_assignment
			answer = ask("Do you want to add another game? (y/n): ")
		end
		print_scores
	end
	def print_scores
		print "-" * 80 + "\n"
		puts "\tLeague Point Calculator"
		print "-" * 80 + "\n"
		@teams.each do |team|
			puts team.print_team
		end
		print "-" * 80 + "\n"
	end
	def ask(question)
		print question
		answer = gets.chomp.upcase
		return answer
	end
	def score_assignment
		answer = ask("Write down the scores: ")
		@games.push(answer)
		answer = answer.split(" ")
		team1 = assign_class(answer[0])
		team2 = assign_class(answer[2])
		if answer[1] > answer[3]
			team1.win
		elsif answer[1] < answer[3]
			team2.win
		else
			team1.tie
			team2.tie
		end			
	end
	def assign_class(team_index)
		if team_exist?(team_index) == false
			team = Team.new(team_index)
			@teams.push(team)
			return team
		else
			@teams.each do |team|
				if team.name == team_index
					return team
					break
				end
			end

		end
	end
	def team_exist?(name)
		found = false
		@teams.each do |team|
			if name == team.name
				found = true
				break
			end
		end
		return found
	end
end

league = League.new