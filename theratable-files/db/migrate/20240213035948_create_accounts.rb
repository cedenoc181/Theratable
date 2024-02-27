class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :account_number #account index number for data query
      t.string :account_type #account type for data query
      t.boolean :admin, default: false
      t.string :reset_password_token #Token used for password reset functionality
      t.string :confirmation_token #Token used for email confirmation
      t.integer :user_id
      t.integer :schedule_id
      t.integer :flexologist_id
      t.integer :client_id
      t.integer :booking_id
      t.integer :payment_id
      t.timestamps
    end
  end
end
