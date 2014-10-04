# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  product_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
	has_and_belongs_to_many :products
  	has_many :users, :through => :products
end
