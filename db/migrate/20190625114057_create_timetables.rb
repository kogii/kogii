class CreateTimetables < ActiveRecord::Migration[5.2]
  def change
    create_table :timetables do |t|
      t.string :name
      t.string :day
      t.integer :period
      t.string :term
      t.string :genre

      t.timestamps
    end
  end
end
