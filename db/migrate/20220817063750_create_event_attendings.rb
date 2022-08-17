class CreateEventAttendings < ActiveRecord::Migration[7.0]
  def change
    create_table :event_attendings do |t|
      t.references :attendee, null: false, foreign_key: { to_table: :events }
      t.references :attended_events, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
