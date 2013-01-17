class CommentsController < ApplicationController
	before_filter :require_user, only: [:create]
	

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(params[:comment])
	    @comment.user = current_user

			if @comment.save 
				redirect_to post_path(@post), notice: "Comment was created  Thank you"
			else
				redirect_to post_comments_path
			end

		end
end
