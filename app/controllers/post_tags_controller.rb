class PostTagsController < ApplicationController
  def index
    @tag = params[:tag]
    @tags = tags_for(Post)
    @posts = reverse_creation Post.tagged_with([@tag])
  end
end
