class WelcomeController < ApplicationController
  def index
    @posts = (Post.all.concat Tip.all).sort_by { |entry| entry.created_at }.reverse.take(3)
  end
end
