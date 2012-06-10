class ApplicationController < ActionController::Base
  protect_from_forgery

  def reverse_creation model
    model.all.sort_by { |object| object.created_at }.reverse
  end

  def tags_for model
    model.tag_counts.map { |pair| pair.name }.sort
  end
end
