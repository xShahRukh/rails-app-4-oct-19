class PostsController < ApplicationController

	def index

		@post = Post.all

	end

	def new
	end

	def show
		@post = Post.find(params[:id])
		puts "SHOWSSSS"
		puts @post
	end

	def create

		#@post = Post.create(title: params[:posts][:title], text: params[:posts][:text])

		@post = Post.new(params.require(:posts).permit(:title, :text))

		@post.save

		redirect_to posts_path

	end

	def edit
		@post = Post.find(params[:id])

		puts @post

	end

	def update
		@post = Post.find(params[:id])

		if @post.update(params.require(:post).permit(:title, :text))
    	redirect_to posts_path
  	else
    	render 'edit'
  	end

	end

	def destroy

		@post = Post.find(params[:id])
		@post.destroy
	
		puts "HELLLLOOOO"

		redirect_to posts_path

	end


end
