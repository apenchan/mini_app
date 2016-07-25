class Flower < ActiveRecord::Base
	has_many :arrangements
	has_many :users, :through => :arrangements
end