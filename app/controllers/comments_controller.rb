class CommentsController < ApplicationController
	def create
		comment = Comment.create(comment_params)
		redirect_to book_path(comment.commentable)	
	end

	private
	def comment_params
		params.require(:comment).permit(:comment,:commentable_id,:commentable_type).merge(user_id: current_user.id)
	end
end
