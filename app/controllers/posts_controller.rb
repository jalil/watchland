class PostsController < ApplicationController
	before_filter :require_user, only: [:new, :create]
	def index
		@posts = Post.all		
	end

	def new
		 @post = Post.new
	end

	def about
		
	end

	
	def show
		@post = Post.find(params[:id])
		@comment = Comment.new
		
	end

	def create
		 @post =Post.new(params[:post])
		 @post.user = current_user
		 
		 
		 	if @post.save
				redirect_to root_path
			else
				redirect_to new_post_path
			end	

	end

end
