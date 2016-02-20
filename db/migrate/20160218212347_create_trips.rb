class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string  :river
      t.string  :name

      t.timestamps
    end
  end
end
