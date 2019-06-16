class FreeChoicePostsController < ApplicationController
  def index
    @free_choice_posts = FreeChoicePost.all
  end

  def show
    @free_choice_post = FreeChoicePost.find(params[:id])
  end

  def new
    @free_choice_post = FreeChoicePost.new
  end

  def create
    free_choice_post = FreeChoicePost.new(free_choice_post_params)
    free_choice_post.save!
    redirect_to free_choice_posts_url, notice: "「#{free_choice_post.name}」を投稿しました。"
  end

  def edit
    @free_choice_post = FreeChoicePost.find(params[:id])
  end

  def update
    free_choice_post = FreeChoicePost.find(params[:id])
    free_choice_post.update!(free_choice_post_params)
    redirect_to free_choice_posts_url, notice: "投稿「#{free_choice_post.name}」を更新しました。"
  end

  def destroy
    free_choice_post = FreeChoicePost.find(params[:id])
    free_choice_post.destroy
    redirect_to free_choice_post_url, notice: "投稿「#{free_choice_post.name}」を削除しました。"
  end


  private

  def free_choice_post_params
    params.require(:free_choice_post).permit(:name, :description, :pais)
  end
end
