class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.date :date #date of payment
      t.string :status, default: "Due" #status Paid/Refunded/Due
      t.integer :cost #price paid for session booked
      t.string :service, default: "60 Min Assisted Stretch Session"
      t.integer :invoice_number  #invoice numer to track payment
      t.integer :applied_credits #credits applied to account for payment 1 credit per single session
      t.integer :booking_id
      t.integer :account_id

      t.timestamps
    end
  end
end
