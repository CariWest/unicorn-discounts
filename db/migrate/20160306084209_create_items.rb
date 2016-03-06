class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :name
      t.integer :base_cost
      t.boolean :discountable, default: true

      t.timestamps
    end
  end
end
