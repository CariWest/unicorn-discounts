class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :tour_tools_id
      t.string  :organizer_name
      t.integer :guest_count

      t.timestamps
    end
  end
end
