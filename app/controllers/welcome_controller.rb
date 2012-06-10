class WelcomeController < ApplicationController
  def index
    @posts = Post.all.sort_by { |post| post.created_at }.reverse.take(3)
  end
end
