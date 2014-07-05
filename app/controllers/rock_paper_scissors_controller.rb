class RockPaperScissorsController < ApplicationController

	def new
	end

	def show
		player_guess = params[:id]
		computer_guess=[0,1,2].sample
		puts "guess = #{player_guess}, #{computer_guess}"
		@result = compute_winner(player_guess.to_i, computer_guess.to_i)
	end

	private
		def compute_winner(pg,cg)
			puts "player guess is #{pg}, computer guess is #{cg}"
			if pg == cg
				output = 'draw'
			elsif pg == 0
				if cg == 1
					output = "loses"
				else
					output = "wins"
				end
			elsif pg == 1
				if cg == 0
					output = "wins"
				else
					output = "loses"
				end
			elsif pg == 2
				if cg == 1
					output = "wins"
				else
					output = "loses"
				end
			end
			puts "hi my name is " + output
			output
		end
end