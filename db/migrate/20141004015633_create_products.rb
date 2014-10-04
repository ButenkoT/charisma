class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :title
      	t.text :image
      	t.integer :price
      	t.string :size
      	t.timestamps

      	t.integer :user_id
    end
  end
end
