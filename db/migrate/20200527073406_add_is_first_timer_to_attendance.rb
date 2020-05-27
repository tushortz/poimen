class AddIsFirstTimerToAttendance < ActiveRecord::Migration[6.0]
  def change
    add_column :attendances, :is_first_timer, :boolean, null: false, default: false
  end
end
