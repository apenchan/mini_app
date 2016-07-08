class FlowersController < ApplicationController
	before_action :set_flower, only: [:show]

	def index
		@flowers = Flower.all
	end

	def show
		@arrangements = Arrangement.all
	end

	def add_arrangment
		flower = Flower.find(params[:id])
		bouqet = Arrangement.find(params[:arrangement_id])
		flower.arrangements << bouqet
	end


	private
	def set_flower
		@flower = Flower.find(params[:id])
	end

	def flower_params
		params.require(:flower).permit(:flower_name, :color, :img_url)
	end

end