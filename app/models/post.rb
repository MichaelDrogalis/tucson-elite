class Post < ActiveRecord::Base
  def user
    User.find user_id
  end
end
