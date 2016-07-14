class Arrangement < ActiveRecord::Base
	has_many :flowers
	has_many :users, :through => :flowers
end