class ArrangementsController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :set_arrangement, only:[:show, :edit, :update, :destory]

	def index
		# @test = "Anna and America are great!"
		@arrangements = Arrangement.all
	end

	def show
		# @flowers = Flower.all
		# @arrangements = Arrangement.all
	end

	def add_flower
		# flower = Flower.find(params[:id])
		# bouqet = Arrangement.find(params[:arrangement_id])
		# flower.arrangements << bouqet
	end

	end

	def new
		@arrangement = Arrangement.new
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