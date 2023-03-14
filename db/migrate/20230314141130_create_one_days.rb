class CreateOneDays < ActiveRecord::Migration[7.0]
  def change
    create_table :one_days do |t|
      t.string :name
      t.datetime :start_time

      t.timestamps
    end
  end
end
