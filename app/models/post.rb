class Post < ActiveRecord::Base
  attr_accessible :title, :url
  has_many :comments
  has_many :votes 
  belongs_to :user
  validates :url, presence: true 
  validates :title, presence: true 
 
 #to get pretty url.
 #def to_param
 #	"#{id} #{title}".parameterize
 #end

	 def vote_count
		votes.where(direction: "up").count - votes.where(direction: "down").count
	end

end
