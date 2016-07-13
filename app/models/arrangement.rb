class Arrangement < ActiveRecord::Base
	has_many :flowers
	has_many :customers, through :flowers
end