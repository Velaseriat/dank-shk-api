class CreateTimings < ActiveRecord::Migration[5.1]
  def change
    create_table :timings do |t|
      t.integer :target_id
      t.datetime :launch_time

      t.timestamps
    end
  end
end
