class PostCommentsController < ApplicationController
  before_filter :authenticate_user!, :except => [:create]
  
  def create
    @post_comment = PostComment.new(params[:post_comment])

    respond_to do |format|
      if @post_comment.save
        format.html { redirect_to post_path(Post.find(@post_comment.post_id)), notice: 'Post comment was successfully created.' }
        format.json { render json: @post_comment, status: :created, location: @post_comment }
      else
        format.html { redirect_to post_path(Post.find(@post_comment.post_id)), alert: 'There was a problem. Your comment was not posted.' }
        format.json { render json: @post_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = PostComment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to post_comments_listing_path, :notice => "You deleted the comment. You show 'em who's boss!" }
      format.json { head :ok }
    end

  end

  def listing
    @comments = PostComment.all
  end

end
