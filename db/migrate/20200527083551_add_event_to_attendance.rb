class AddEventToAttendance < ActiveRecord::Migration[6.0]
  def change
    add_reference :attendances, :event, null: false, foreign_key: true
  end
end
