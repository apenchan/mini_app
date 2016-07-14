class AddColumntoFlowers1 < ActiveRecord::Migration
  def change
  	add_column :flowers, :user_id, :integer
  end
end
