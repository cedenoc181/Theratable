class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :sixteen_digits
      t.string :exp_dates
      t.integer :security_digits
      t.string :card_holder_name
      t.string :billing_address
      t.string :billing_address_2
      t.string :billing_zipcode
      t.string :billing_state
      t.string :billing_city
      t.integer :booking_id

      t.timestamps
    end
  end
end
