class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :show]
  before_action :set_post, only: [:edit, :update, :show]
  before_action :set_dimension, only: [:edit, :update]

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to edit_post_path(@post)
    else
      redirect_to root_path, status: :unprocessable_entity
    end
  end

  def edit
    unless @post.published?
      render @post.status
    else
      redirect_to post_path(@post)
    end
  end

  def update
    if @post.update(post_params)
      if @post.published?
        redirect_to post_path(@post)
      else
        redirect_to edit_post_path(@post)
      end
    else
      render :edit, status: :unprocessable_entity
    end

  end

  private

  def post_params
    params.require(:post).permit(:photo, :x_offsets, :y_offsets, :width, :height, :status, :filter_name, :description)
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  private

  def set_dimension
    @resize_dimension = [1000, 1000]
  end
end
