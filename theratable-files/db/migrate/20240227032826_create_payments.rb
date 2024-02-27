class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :sixteen_digits
      t.string :exp_dates
      t.integer :security_digits
      t.string :card_holder_name

      t.timestamps
    end
  end
end
