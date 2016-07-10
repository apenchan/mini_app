class ArrangementsController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :set_arrangement, only:[:show, :edit, :update, :destory]

	def index
		# @test = "Anna and America are great!"
		@flower = Flower.find(params[:flower_id])
		@arrangements = Arrangement.all
	end

	def show
		# @flowers = Flower.all
		# @arrangements = Arrangement.all
	end

	def new
		@flower = Flower.find(params[:flower_id])
		@arrangement = Arrangement.new
	end

	def create
		@arrangement = Arrangement.new(arrangement_params)

		if arrangement.save 
			redirect_to @arrangement
		else 
			render :new
		end
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