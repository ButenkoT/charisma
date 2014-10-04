# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  comment    :string(255)
#  rating     :integer
#  product_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base
	belongs_to :product
	has_many :users, :through => :products
end
