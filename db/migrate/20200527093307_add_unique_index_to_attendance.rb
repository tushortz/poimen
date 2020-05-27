class AddUniqueIndexToAttendance < ActiveRecord::Migration[6.0]
  def change
    add_index :attendances, [:event, :full_name], unique: false
  end
end
