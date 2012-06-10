class VideoTagsController < ApplicationController
  def index
    @tag = params[:tag]
    @tags = tags_for(Video)
    @videos = reverse_creation Video.tagged_with([@tag])
  end
end
