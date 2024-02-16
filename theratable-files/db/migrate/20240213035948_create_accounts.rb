class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :account_number #account index number for data query
      t.string :account_type #client or flex 
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: false
      t.string :reset_password_token #Token used for password reset functionality
      t.string :confirmation_token #Token used for email confirmation
      t.string :subscription_plan
      t.date :subscription_expiry_date
      t.integer :payment_method_id
      t.timestamps
    end
  end
end
