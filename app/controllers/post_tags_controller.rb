class PostTagsController < ApplicationController
  def index
    @tag = params[:tag]
    @tags = tags_for(Post)
    @posts = Post.tagged_with([@tag])
  end
end
