class AddShepherdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :shepherd, null: true, foreign_key: true
  end
end
