class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :title
      t.integer :day
      t.integer :month
      t.integer :year
      t.date :date
      t.text :meal_details

      t.timestamps
    end
  end
end
