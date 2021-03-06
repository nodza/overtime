class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to @post, :gflash => [:success]
    else
      render :new, :gflash => [:error]
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, :gflash => [:success]
    else
      render :edit, :gflash => [:error]
    end
  end

  def destroy
    @post.delete
     redirect_to posts_path, :gflash => [:success]
  end


  private

  def post_params
    params.require(:post).permit(:date, :rationale, :status)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
