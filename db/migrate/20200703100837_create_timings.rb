class CreateTimings < ActiveRecord::Migration[5.1]
  def change
    create_table :timings, id: false do |t|
      t.integer :target_id, primary_key: true, unique: true, null: false
      t.datetime :launch_time, null: false

      t.timestamps
    end
  end
end
