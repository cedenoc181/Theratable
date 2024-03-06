class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :injuries
      t.string :goals
      t.integer :credits_available  #total credits available after booking/ credit available is debitted once client books a session regardless of when the date is.(credits yet used in booking calendar)
      t.integer :credit_balance #total credits before bookings usually credits purchase, that yet to be used/ after session is completed on a booking then balance is debitted
      t.integer :account_id
      t.integer :user_id
      t.integer :session_id
      t.integer :booking_id

      t.timestamps
    end
  end
end
