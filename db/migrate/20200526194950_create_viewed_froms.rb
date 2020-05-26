class CreateViewedFroms < ActiveRecord::Migration[6.0]
  def change
    create_table :viewed_froms do |t|
      t.string :text

      t.timestamps
    end
  end
end
