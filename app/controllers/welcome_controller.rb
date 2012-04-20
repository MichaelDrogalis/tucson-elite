class WelcomeController < ApplicationController
  def index
    @posts = Post.last 3
  end
end
