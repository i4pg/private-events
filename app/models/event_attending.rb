class DateValidator < ActiveModel::Validator
  def validate(record)
    if Event.find(record.attended_event_id).date < Date.today
      record.errors.add :base,
                        "Can't attend or leave an old event"
    end
  end
end

class CreatorValidator < ActiveModel::Validator
  def validate(record)
    if record.attendee_id == Event.find(record.attended_event_id).creator_id
      record.errors.add :base, "Creator can't apply as attendee"
    end
  end
end

class StatusValidator < ActiveModel::Validator
  def validate(record)
    return unless current_user.id == record.attendee.id && (record.status == 'private')

    record.errors.add :base, 'This is a private event, you must have an invitation to join'
  end
end

class EventAttending < ApplicationRecord
  validates_with DateValidator
  # validates_with CreatorValidator
  # validates_with StatusValidator

  belongs_to :attendee, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'
end
