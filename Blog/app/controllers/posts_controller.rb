class PostsController < ApplicationController
	before_action :find_post, only: [:show,:edit,:update,:destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index

		if params[:category].blank?
			@posts = Post.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@posts = Post.where(category_id: @category_id).order("created_at DESC")
		end

	end

	def show
	end

	def new
		@post= current_user.posts.build
	end

	def edit
	end

	def create
		@post = current_user.posts.build(post_params)

		if @post.save
			redirect_to @post, notice: "Post Created"
		else
			render 'new'
		end
	end

	def update
		if @post.update(post_params)
			redirect_to @post, notice: "Update successful"
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to root_path, notice: "Post Destroyed"
	end

	private

	def post_params
		params.require(:post).permit(:title,:content,:category_id, :tag_ids => [])
	end

	def find_post
		@post = Post.friendly.find(params[:id])
	end

end
