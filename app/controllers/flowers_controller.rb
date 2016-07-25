class FlowersController < ApplicationController
	skip_before_action :verify_authenticity_token 
	before_action :set_flower, only: [:show, :update]

	def index
		@flowers = Flower.all
	end

	def show
		# @arrangements = Arrangement.all
		# @flowers = Flower.all
	end

#Info below not needed. Arrangements will be full CRUD. Users should only be able to pick and choose flowers

	# def arrangements
	# 	# flower = Flower.find(params[:id])
	# 	# bouqet = Arrangement.find(params[:arrangement_id])
	# 	# flower.arrangements << bouqet
	# 	# redirect_to flower_path(flower)
	# end

	def update
		if @flower.update(flower_params)
			redirect_to @flower
		else
			render :edit
	end
end



	private
	def set_flower
		@flower = Flower.find(params[:id])
	end

	def flower_params
		params.require(:flower).permit(:flower_name, :color, :img_url)
	end

end