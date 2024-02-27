class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :status, default: 'Not booked'
      t.boolean :refund, default: false
      t.boolean :paid, default: false
      t.integer :account_id
      t.integer :schedule_id
      t.integer :session_id
      t.integer :flexologist_id

      t.timestamps
    end
  end
end
