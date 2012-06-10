class ApplicationController < ActionController::Base
  protect_from_forgery

  def tags_for model
    model.tag_counts.map { |pair| pair.name }.sort
  end
end
