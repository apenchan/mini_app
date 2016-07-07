class CreateArrangements < ActiveRecord::Migration
  def change
    create_table :arrangements do |t|
    	t.decimal :price
    	t.string :occasion
    	t.text :card_description
    end
  end
end
