class PostCommentsController < ApplicationController

  def create
    @post_comment = PostComment.new(params[:post_comment])

    respond_to do |format|
      if @post_comment.save
        format.html { redirect_to post_path(Post.find(@post_comment.post_id)), notice: 'Post comment was successfully created.' }
        format.json { render json: @post_comment, status: :created, location: @post_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @post_comment.errors, status: :unprocessable_entity }
      end
    end
  end

end
