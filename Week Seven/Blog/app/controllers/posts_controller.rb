class PostsController < ApplicationController
	  before_action :authenticate_user!
	def index
		@posts = Post.all
	end	

	def show
   	 	@post = Post.friendly.find(params[:id])
 	end
	def new
  		@post =Post.new
       # @categries = Categry.all.map{|c| [ c.name, c.id ] }
	end
 
def edit
  @post = Post.friendly.find(params[:id])
end

def create
 	@post = Post.new(post_params)
  @post.user_id = current_user.id
       		if @post.save
    		redirect_to @post
  		else
    		render 'new'
  		end
end
 
 
 
 def update
  @post = Post.friendly.find(params[:id])
 
  if @post.update(post_params)
    redirect_to @post
  else
    render 'edit'
  end
end
def destroy
  @post = Post.friendly.find(params[:id])
  @post.destroy
   redirect_to posts_path
end
private
  def post_params

    params.require(:post).permit(:title, :content, :category_id, :tag_ids =>[])
  end
end
