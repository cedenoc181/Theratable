class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.integer :credits_worth
      t.boolean :credit_single, default: false
      t.boolean :credit_bundle, default: false
      t.integer :cost
      t.string :image

      t.timestamps
    end
  end
end
