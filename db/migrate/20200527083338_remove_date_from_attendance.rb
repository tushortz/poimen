class RemoveDateFromAttendance < ActiveRecord::Migration[6.0]
  def change
    remove_column :attendances, :date, :date
  end
end
