class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
       t.string :name
       t.text :type
       t.float :measurement
       t.integer :user_id
       t.timestamps
    end
  end
end
