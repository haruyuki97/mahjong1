class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.all
    #new機能で使うインスタンス変数
    @comment = @post.comments.build
  end

  def new
    @post = Post.new
    @pais = params.require(:ripai)[:selected_pais]
  end

  def create
    post = Post.new(post_params)
    post.save!
    redirect_to posts_url, notice: "「#{post.name}」を投稿しました"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update!(post_params)
    redirect_to posts_url, notice: "「#{post.name}」を更新しました"
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_url, notice: "投稿「#{post.name}」を削除しました。"
  end

  def favorite
    user = User.find(params[:favorite][:user_id])
    post = Post.find(params[:favorite][:post_id])
    is_favorite = params[:favorite][:is_favorite]
    if is_favorite == '0'
      user.like(post)
    else
      user.unlike(post)
    end
    redirect_to posts_path
    @favorites = user.favorites
  end

  private

  def post_params
    params.require(:post).permit(:name, :description, :pais)
  end



end
