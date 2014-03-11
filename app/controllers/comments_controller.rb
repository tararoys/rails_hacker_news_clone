class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new()
  end

  def create
    @comment = Comment.new(comment_params.merge(post_params.merge(user_id: current_user.id)))
    if @comment.save()
      redirect_to post_path(params[:post_id])
    else
      redirect_to root_path # this should render the page, and it doesn't
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

  def post_params
    params.permit(:post_id)
  end
end
