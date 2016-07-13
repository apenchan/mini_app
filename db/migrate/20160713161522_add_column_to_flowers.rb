class AddColumnToFlowers < ActiveRecord::Migration
  def change
  	add_column :flowers, :arrangement_id, :integer
  	add_column :flowers, :customer_id, :integer
  end
end
