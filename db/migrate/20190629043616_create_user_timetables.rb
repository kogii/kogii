class CreateUserTimetables < ActiveRecord::Migration[5.2]
  def change
    create_table :user_timetables do |t|
      t.integer :user_id
      t.integer :lecture_id

      t.timestamps
    end
  end
end
