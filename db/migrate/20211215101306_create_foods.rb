class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :number_of_food
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
