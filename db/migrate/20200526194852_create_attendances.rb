class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.date :date
      t.string :full_name
      t.references :status, null: false, foreign_key: true
      t.references :viewed_from, null: false, foreign_key: true
      t.references :shepherd, null: false, foreign_key: true

      t.timestamps
    end
  end
end
