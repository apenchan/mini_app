class ArrangementsController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :set_arrangement, only:[:show, :edit, :update, :destory]

	def index
		# @test = "Anna and America are great!"
		@flower = Flower.find(params[:flower_id])
		@arrangements = Arrangement.all
	end

	def show
		@flower = Flower.find(params[:flower_id])
		# @arrangement = Arrangement.find(params[:arrangement_id])
		# @arrangement = Arrangement.all
	end

	def new
		@flower = Flower.find(params[:flower_id])
		@arrangement = Arrangement.new
	end

	def create
		@arrangement = Arrangement.new(arrangement_params)
		@flower = Flower.new

		if @arrangement.save 
			redirect_to :root
		else 
			render :edit
		end
	end

	def edit
		@arrangement = Arrangement.find(params[:id])
		@flower = Flower.new
	end

	def update
		# @arrangement = Arrangement.find(params[:id]).update
		# redirect_to :root
		if @arrangement.update(arrangement_params)
			redirect_to @arrangement
		else
			render :edit
		end
	end

	def destroy
		p @arrangement
		@arrangement = Arrangement.find(params[:id]).destroy
		redirect_to :root
	end

	def add_flower
	end

	private
	def set_arrangement
		@arrangement = Arrangement.find(params[:id])
	end

	def arrangement_params
		params.require(:arrangement).permit(:price, :occasion, :card_description)
	end
end