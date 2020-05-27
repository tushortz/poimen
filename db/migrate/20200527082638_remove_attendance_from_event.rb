class RemoveAttendanceFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_reference :events, :attendance, null: false, foreign_key: true
  end
end
