class Vote <ActiveRecord::Base
	attr_accessible :direction, :post_id
	belongs_to :post
	belongs_to :user
	
	
end
