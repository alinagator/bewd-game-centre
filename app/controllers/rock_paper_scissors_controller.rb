class RockPaperScissorsController < ApplicationController

	def new
	end

	def show
		@player1_throw = ["rock", "paper", "scissors"].sample
		@computer_throw = ["rock", "paper", "scissors"].sample
	end

end