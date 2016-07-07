class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
    	t.string :flower_name
    	t.string :color
    	t.string :img_url
    end
  end
end
