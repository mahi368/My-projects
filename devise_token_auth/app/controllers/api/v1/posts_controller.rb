class Api::V1::PostsController < ApplicationController

	before_action :find_posts , only: [ :show , :update , :destroy ]

	def index
		@posts = Post.all
		render json: @posts
	end

	def show
	   render json: @post
	end

	def create
		@post = current_user.posts.new(title: params[:post][:title],body: params[:post][:body])
		if @post.save
			render json: @post
		else
			render json: { error: 'Unable to create post.' }, status: 400
		end
	end

	def update
		if @post
			@post.update(title: params[:post][:title], body: params[:post][:body])


			render json: { message: 'Post successfully updated.'}, status: 200
		else
			render json: { error: 'Unable to update post.'}, status: 400
		end
	end

	def destroy
		if @post
			@post.destroy

			render json: { message: 'Post successfully deleted.'}, status: 200
		else
			render json: { error: 'Unable to delete Post.'}, status: 400
		end
	end

	private

	def find_posts
		@post = Post.find(params[:id])
	end
end
