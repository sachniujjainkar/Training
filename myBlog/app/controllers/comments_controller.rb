class CommentsController < ApplicationController


=begin 
	def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag])
    else
      @posts = Post.all
    end
  end
=end




  def create

		@post=Post.find(params[:post_id])

		@comment = @post.comments.create(comment_params)
    	redirect_to post_path(@post)
  end
 
def destroy
	@post=Post.friendly.find(params[:post_id])
	@comment=@post.comments.find(params[:id])
	@comment.destroy
	redirect_to post_path(@post)
end

  private
    def comment_params
      params.require(:comment).permit(:postcommenter, :postcomment)
    end
	
end
