class Event < ApplicationRecord
  # We call it :creator so we've to specify the class_name that we'll look to
  # which is 'User' model
  # look at :creator migration it has { foreign_key: { to_table: :users }}
  belongs_to :creator, class_name: 'User'

  # User.rb for more info
  has_many :event_attendings, foreign_key: 'attended_events_id'

  # Here we add the third model assocation { read user.rb for more comments }
  has_many :attendee, through: :event_attendings
end
