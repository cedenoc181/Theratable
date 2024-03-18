class Client < ApplicationRecord
    
    belongs_to :user, :inverse_of :client
    accepts_nested_attributes_for :user

    belongs_to :account, :inverse_of :client
    accepts_nested_attributes_for :account

    has_many :bookings, :dependent :destroy, :inverse_of :client
    accepts_nested_attributes_for :bookings

   has_many :payments, through: :bookings, :dependent :destroy
   accepts_nested_attributes_for :payments

   def credit_statement 
        credits_booked = credit_balance - credit_available
        "credit balance: #{credit_balance} 
        credit available: #{credit_available}
        credits booked: #{credits_booked}
       "
   end 
end
