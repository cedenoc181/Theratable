class Client < ApplicationRecord

    #client will have a relationship to new table reviews
    
    belongs_to :user, :inverse_of :client
    accepts_nested_attributes_for :user

    belongs_to :account, :inverse_of :client
    accepts_nested_attributes_for :account

    has_many :bookings, :dependent :destroy, :inverse_of :client
    accepts_nested_attributes_for :bookings

   has_many :payments, through: :bookings, :dependent :destroy
   accepts_nested_attributes_for :payments

   def credit_statement 
        credits_booked = self.credit_balance - self.credit_available
        "Credit Statement:
        - Credit Balance: #{self.credit_balance} 
        - Credit Available: #{self.credit_available}
        - Credits Booked: #{credits_booked}
       "
   end 
end
