class FlowersController < ApplicationController
	before_action :set_flower, only: [:show]

	def index
		@flowers = Flower.all
	end

	def show
	end

	private
	def set_flower
		@flower = Flower.find(params[:id])
	end

	def flower_params
		params.require(:flower).permit(:flower_name, :color, :img_url)
	end

end