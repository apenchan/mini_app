class Flower < ActiveRecord::Base
	has_and_belongs_to_many :arrangements
end