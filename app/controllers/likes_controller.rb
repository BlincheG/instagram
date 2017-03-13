class LikesController < ApplicationController
	before_action :set_post

	def create
		@like = @post.likes.create
		@like.user_id = current_user.id
		@like.save
	end

	def destroy
		@like = Like.find(params[:id])
		@like.destroy
		redirect_to :back
	end

	private

	def set_post  
		@post = Post.find(params[:post_id])
	end 

end
