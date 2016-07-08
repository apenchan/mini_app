class ArrangementsController < ApplicationController
	before_action :set_arrangement, only:[:show, :edit, :update, :destory]

	def index
		# @test = "Anna and America are great!"
		@arrangements = Arrangement.all
	end

	def show
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def set_arrangement
		@arrangement = Arrangement.find(params[:id])
	end

	def arrangement_params
		params.require(:arrangement).permit(:price, :occasion, :card_description)
	end
end