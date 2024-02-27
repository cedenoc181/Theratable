class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :address
      t.string :address_two
      t.string :state, default: 'NY'
      t.integer :zipcode
      t.integer :phone_number
      t.integer :account_id
      t.integer :client_id
      t.integer :flex_id

      t.timestamps
    end
  end
end