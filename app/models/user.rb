class User < ActiveRecord::Base
  attr_accessible :password_digest, :username, :password, :twitter_handle
  has_secure_password
  has_many :posts, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :votes, :dependent => :destroy
end
