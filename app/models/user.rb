class User < ActiveRecord::Base
	has_secure_password

	attr_accessible :username, :email, :password, :password_confirmation

	validates_uniqueness_of :username, :email

	has_many :topics, :dependent => :destroy
	has_many :posts, :dependent => :destroy
end
