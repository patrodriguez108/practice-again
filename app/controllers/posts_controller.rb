class PostsController < ApplicationController

	def index
		@posts = Post.all.order('created_at DESC')
	end

	def new
	end

	def create
		post = Post.new(post_params)
		post.user_id = session[:user_id]
		if post.save
			redirect_to '/posts'
		else
			@errors = post.errors.full_messages
			render 'new'
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :content)
	end
end