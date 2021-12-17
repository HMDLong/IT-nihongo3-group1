class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.float :total

      t.timestamps
    end
  end
end
