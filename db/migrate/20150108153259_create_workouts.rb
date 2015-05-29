class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :workout_type
      t.integer :duration
      t.string :intensity
      t.integer :day
      t.integer :month
      t.integer :year
      t.date :date
      t.text :workout_details

      t.timestamps
    end
  end
end
