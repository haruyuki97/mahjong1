class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments.all
  end

  def show
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end

  def create
    @post = Post.find(params[:post_id])
    comment = @post.comments.build(comment_params)
    comment.save!
    redirect_to post_path(params[:post_id])
  end


  def edit
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :content, :post_id)
  end
end
