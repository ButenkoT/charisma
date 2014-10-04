class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
      	t.text :image
      	t.string :status
      	t.string :city
      	t.string :country

        t.integer :product_id
      	t.timestamps
    end
  end
end