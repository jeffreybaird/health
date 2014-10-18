class CreateLifts < ActiveRecord::Migration
  create_table :lifts do |t|
     t.integer :exercise_id
     t.integer :weight
     t.integer :repetitions
     t.timestamps
  end
end
