class Event < ActiveRecord::Base
  belongs_to :event_detail
  has_many :event_users_linkings
end
