class PostsController < ApplicationController
  def index
  end

  def show
    # ***** 以下を追加 *****
    @post = Post.find(params[:id])
    # ***** 以上を追加 *****
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to post
  end


  def edit
  end
  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
