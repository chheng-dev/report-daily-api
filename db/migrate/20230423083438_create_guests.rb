class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :username
      t.string :paymenth_method
      t.integer :price
      t.string :status
      t.string :location
      t.string :phone_number

      t.timestamps
    end
  end
end
