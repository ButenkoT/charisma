# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  image           :text
#  status          :string(255)
#  city            :string(255)
#  country         :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  email           :string(255)
#  password_digest :string(255)
#  avatar          :text             default("http://derpreview.files.wordpress.com/2012/01/harpo-marx-02.jpg")
#

class User < ActiveRecord::Base
	has_secure_password
	
    has_many :products
    has_many :categories, :through => :products
    has_many :comments, :through => :products 

  	validates :name, :presence => true, :uniqueness => true, :length => {:minimum => 2}
  	validates :email, :presence => true, :uniqueness => true
end
