class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :arrangements, :customers do |t|
      t.integer :arrangement_id
      t.integer :customer_id
    end
  end
end
