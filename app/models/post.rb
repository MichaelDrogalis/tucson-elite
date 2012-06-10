class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  acts_as_taggable

  has_many :post_comments

  def user
    User.find user_id
  end

  def date
    created_at.strftime("%m/%d/%Y")
  end

  def sorted_tags
    tag_list.sort
  end
end
