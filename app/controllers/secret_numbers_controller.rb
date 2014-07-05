class SecretNumbersController < ApplicationController
	def new
	end

	def show
		# Get a random number
		@secret_number = rand(5)+1

		# get the user chose number from params
		@chosen_number = params[:id].to_i
	end
end