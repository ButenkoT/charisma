class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	  t.string :name
      	t.text :description
      	t.string :status
      	t.string :city
      	t.string :country

        
      	t.timestamps
    end
  end
end
