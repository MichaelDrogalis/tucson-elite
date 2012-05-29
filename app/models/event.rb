class Event < ActiveRecord::Base
  def serializable_hash options
    { :title => name, :start => event_when }
  end
end
