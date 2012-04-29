class PostComment < ActiveRecord::Base
  belongs_to :posts
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :content
end
