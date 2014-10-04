class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :comment
    	t.integer :rating

    	t.integer :product_id
    	t.timestamps
    end
  end
end
