class CommentsController < ApplicationController
   before_action :authenticate_user!
   # before_action :find_post
   # before_action :find_comment, only: [:edit, :update, :destroy]
	def create

    @post = Post.friendly.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user_id == current_user.id
    @comment.save!
    redirect_to post_path(@post)
  end
def edit
  @comment = Comment.find(params[:id])
end
def update
  @comment = Comment.find(params[:id])
 
  if @comment.update(comment_params)
    redirect_to posts_path(@post)
  else
    render 'edit'
  end
end

def show
  @comment = Comment.find(params[:id])
end
   def destroy
    @post = Post.friendly.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
  private
    def comment_params
      params.require(:comment).permit(:body,:tag_ids =>[])
    end
    # def find_post
    #   @post= Post.friendly.find(params_id[:post_id])
    # end

    # def find_comment
    #   @comment = @post.comments.find(params[:id])
      
    # end
end

