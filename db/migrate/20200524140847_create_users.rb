class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile_no
      t.date :date_of_birth

      t.timestamps
    end
  end
end
