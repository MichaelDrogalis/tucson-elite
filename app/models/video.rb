class Video < ActiveRecord::Base
  acts_as_taggable

  def date
    created_at.strftime("%m/%d/%Y")
  end

  def sorted_tags
    tag_list.sort
  end
end
