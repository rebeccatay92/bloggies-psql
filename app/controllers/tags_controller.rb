class TagsController < ApplicationController
  def index
    @all_tags = Tag.all
    render json: @all_tags
  end
end
