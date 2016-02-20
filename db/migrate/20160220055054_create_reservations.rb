class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :tour_tools_id
      t.integer :trip_id
      t.string  :organizer_name

      t.timestamps
    end
  end
end
