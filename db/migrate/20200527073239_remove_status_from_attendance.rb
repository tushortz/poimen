class RemoveStatusFromAttendance < ActiveRecord::Migration[6.0]
  def change
    remove_reference :attendances, :status, null: false, foreign_key: true
  end
end
