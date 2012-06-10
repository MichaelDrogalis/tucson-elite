class PostTagsController < ApplicationController
  def index
    @tag = params[:tag]
    @posts = Post.tagged_with([@tag])
  end
end
