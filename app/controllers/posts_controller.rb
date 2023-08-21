class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update]
  before_action :set_post, only: [:edit, :update]
  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to edit_post_path(@post)
    else
      redirect_to root_path, status: :unprocessable_entity
    end
  end

  def edit
    render @post.status
  end

  def update
    if @post.update(post_params)
      redirect_to edit_post_path(@post)
    else
      render :edit, status: :unprocessable_entity
    end

  end
  private
  def post_params
    params.require(:post).permit(:photo, :x_offsets, :y_offsets, :width ,:height, :status)
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end
end
