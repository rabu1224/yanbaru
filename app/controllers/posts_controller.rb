class PostsController < ApplicationController

  before_action :set_post, only: %i[show edit update destroy]


  def index
    # ***** 以下を追加 *****
    @posts = Post.order(id: :asc)
    # ***** 以上を追加 *****
  end

  def show
    # ***** 以下を追加 *****

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
      # ***** 以上を追加 *****
    end

    def update
      # ***** 以下を追加 *****
      @post.update!(post_params)
      redirect_to post
      # ***** 以上を追加 *****
    end

  def destroy
   # ***** 以下を追加 *****
   @post.destroy!
   redirect_to post
   # ***** 以上を追加 *****
 end


  private
  # ***** 以下を追加 *****
  def set_post
    @post = Post.find(params[:id])
  end
  # ***** 以上を追加 *****


  def post_params
    params.require(:post).permit(:title, :content)
  end

end
