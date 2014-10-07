# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  image       :text
#  price       :integer
#  size        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#  description :text
#

class Product < ActiveRecord::Base
	belongs_to :user
  	has_many :comments
  	has_and_belongs_to_many :categories
  	
end
