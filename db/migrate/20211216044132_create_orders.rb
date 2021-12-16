class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :food_id
      t.string :name
      t.integer :phone
      t.string :address

      t.timestamps
    end
  end
end
