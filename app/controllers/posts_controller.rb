class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_posts = current_user.posts
  end

  def show
    render html: 'show one post'
  end

  def new
    render html: 'show form to create new post'
  end

  def edit
    render html: 'show form to edit post'
  end

end
