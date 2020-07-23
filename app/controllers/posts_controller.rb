class PostsController < ApplicationController
  def index
    # ***** 以下を追加 *****
    @posts = Post.order(id: :asc)
    # ***** 以上を追加 *****
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
      # ***** 以下を追加 *****
      @post = Post.find(params[:id])
      # ***** 以上を追加 *****
    end

    def update
      # ***** 以下を追加 *****
      post = Post.find(params[:id])
      post.update!(post_params)
      redirect_to post
      # ***** 以上を追加 *****
    end

  def destroy
   # ***** 以下を追加 *****
   post = Post.find(params[:id])
   post.destroy!
   redirect_to post
   # ***** 以上を追加 *****
 end


  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
