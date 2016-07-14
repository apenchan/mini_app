class Flower < ActiveRecord::Base
	belongs_to :arrangement
	belongs_to :user
end