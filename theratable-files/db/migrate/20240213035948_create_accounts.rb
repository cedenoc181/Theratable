class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :number
      t.string :type
      t.string :username
      t.string :password_digest
      t.boolean :admin
      t.string :activation_token
      t.string :reset_password_token
      t.string :confirmation_token
      t.string :billing_address
      t.string :payment_method
      t.string :subscription_plan
      t.date :subscription_expiry_date

      t.timestamps
    end
  end
end
