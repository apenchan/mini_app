class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :flowers, :customer_id
  end
end
