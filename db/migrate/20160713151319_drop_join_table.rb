class DropJoinTable < ActiveRecord::Migration
  def change
  	drop_table :arrangements_customers
  end
end
