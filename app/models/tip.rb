class Tip < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  def user
    User.find user_id
  end

  def date
    created_at.strftime("%m/%d/%Y")
  end
end
