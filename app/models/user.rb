# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  description     :text
#  status          :string(255)
#  city            :string(255)
#  country         :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  email           :string(255)
#  password_digest :string(255)
#  avatar          :text             default("avatar.jpg")
#

class User < ActiveRecord::Base
	has_secure_password
	
    has_many :products
    has_many :categories, :through => :products
    has_many :comments 
    

  	validates :name, :presence => true, :uniqueness => true, :length => {:minimum => 2}
  	validates :email, :presence => true, :uniqueness => true
end
