class Flower < ActiveRecord::Base
	belongs_to :customer
	belongs_to :arrangement
end