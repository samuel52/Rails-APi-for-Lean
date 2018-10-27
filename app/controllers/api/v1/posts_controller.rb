module Api
	module V1
		class PostsController < ApplicationController
			# before_action :authenticate_user!

			def index
				render json: Post.all
			end

			def show
				render json: Post.find(params[:id])
			end

			# create new post
			def create
				@post = Post.new(post_params)
				
				if @post.save
					render json: {data:@post},status: :ok
				else
					render json: {status: "ERROR", message: "Not Saved", data:@post.errors},status: :unprocessable_entity
				end
			end

			# private parameters
			private

			def post_params
				params.permit(:title, :body)
			end
		end
	end
end