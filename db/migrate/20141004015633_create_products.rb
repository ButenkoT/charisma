class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :title
      	t.text :image
      	t.integer :price
      	t.string :size
      	t.timestamps

      	t.integer :category_id
      	t.integer :user_id
        t.integer :comment_id
    end
  end
end
