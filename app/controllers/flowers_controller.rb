class FlowersController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :set_flower, only: [:show]

	def index
		@flowers = Flower.all
	end

	def show
		@arrangements = Arrangement.all
		# @flowers = Flower.all
	end

	def arrangements
		# flower = Flower.find(params[:id])
		# bouqet = Arrangement.find(params[:arrangement_id])
		# flower.arrangements << bouqet
		# redirect_to flower_path(flower)
	end

	def create
	end



	private
	def set_flower
		@flower = Flower.find(params[:id])
	end

	def flower_params
		params.require(:flower).permit(:flower_name, :color, :img_url)
	end

end