class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Now this says look you'll recieve creator_id not user_id from events table
  has_many :events, foreign_key: 'creator_id'

  # And this one I've beem struggling to figure out how it's working
  # It's Obvious that I forgot to mention the third table that's supposed to connect to
  # note that this assocation must be before the one below
  has_many :event_attendings, foreign_key: 'attendee_id'

  # So here we did some sourcing assocation to a third model to connect them { through event_attendings}
  # if you want to use another name instead of :attended_events, you have to decleare that as source: :name
  # Sources are kinda class_name for has_many :through assocation
  has_many :attended_events, through: :event_attendings
end
