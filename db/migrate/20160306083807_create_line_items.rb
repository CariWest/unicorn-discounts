class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :item_id
      t.integer :reservation_id
      t.integer :percent_discount
      t.integer :dollar_discount

      t.timestamps
    end
  end
end
