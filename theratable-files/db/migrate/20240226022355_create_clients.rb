class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :injuries
      t.string :goals
      t.integer :credits
      t.boolean :bundle_plan, default: false
      t.integer :account_id
      t.integer :user_id
      t.integer :session_id
      t.integer :booking_id

      t.timestamps
    end
  end
end
