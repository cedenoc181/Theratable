class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :status, default: 'Not booked' #is booking booked, cancelled, rescheduled?
      t.boolean :paid #is booking paid for?
      t.integer :credits_paid #credits_paid for the booking 
      t.boolean :credits_refunded,  default: false  #credits_refunded is booking is cancelled or rescheduled and deducted after session is over
      t.string :address #address will be filled automatically in the controller
      t.integer :account_id #account ID associated with the booking
      t.integer :schedule_id
      t.integer :session_id
      t.integer :flexologist_id
      t.integer :client_id
      t.integer :payment_id
      t.timestamps
    end
  end
end
