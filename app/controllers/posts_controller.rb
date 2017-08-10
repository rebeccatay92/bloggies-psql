class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_posts = current_user.posts
    @new_post = current_user.posts.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    render html: 'show form to create new post'
  end

  def create
    # allowing mass assignment
    Post.create(post_params)
    redirect_to posts_path
  end

  def edit
    @current_post = Post.find(params[:id])
  end

  def update
    updated_post = Post.find(params[:id])
    updated_post.update(post_update_params)
    redirect_to posts_path
  end


  def destroy
    Post.destroy(params[:id])
    #deleted_post = Post.find(params[:id])
    #deleted_post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end


  def post_update_params
    params.require(:post).permit(:title, :content)
  end


end
