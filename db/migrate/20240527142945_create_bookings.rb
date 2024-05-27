class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :prop, null: false, foreign_key: true
      t.string :start_date, null: false
      t.string :end_date, null: false

      t.timestamps
    end
  end
end
