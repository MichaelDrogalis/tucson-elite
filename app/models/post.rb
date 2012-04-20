class Post < ActiveRecord::Base
  def user
    User.find user_id
  end

  def date
    created_at.strftime("%m/%d/%Y")
  end
end
