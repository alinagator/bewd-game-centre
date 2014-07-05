class RockPaperScissorsController < ApplicationController

	def new
	end

	def show
		@player_guess = params[:id]
		@computer_guess=[0,1,2].sample
		@result = compute_winner(@player_guess, @computer_guess)
	end

	private
		def compute_winner(pg,cg)
			if pg == cg
				'draw'
			elsif pg == 0
				if cg == 1
					"loses"
				else
					"wins"
				end
			elsif pg == 1
				if cg == 0
					"wins"
				else
					"loses"
				end
			elsif pg == 2
				if cg == 1
					"wins"
				else
					"loses"
				end
			end
		end
end