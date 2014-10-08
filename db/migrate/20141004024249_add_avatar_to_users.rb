class AddAvatarToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :avatar, :text, :default => 'avatar.jpg'
  end
end
