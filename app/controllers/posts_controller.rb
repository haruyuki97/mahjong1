class PostsController < ApplicationController
  def index
    @ps = PaisService.new
    @posts = Post.all
  end

  def show
    @ps = PaisService.new
    @post = Post.find(params[:id])
  end

  def new
    @ps = PaisService.new
    @post = Post.new
    @pais = params.require(:ripai)[:selected_pais]
  end

  def create
    post = Post.new(post_params)
    post.save!
    redirect_to posts_url, notice: "「#{post.name}」を投稿しました"
  end

  def edit
    @ps = PaisService.new
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

  private

  def post_params
    params.require(:post).permit(:name, :description, :pais)
  end
end
