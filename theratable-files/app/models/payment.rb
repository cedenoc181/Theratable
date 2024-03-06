class Payment < ApplicationRecord

    belongs_to :account, :inverse_of => :payments
    accepts_nested_attributes_for :account
     
    belongs_to :booking, :inverse_of => :payments
    accepts_nested_attributes_for :booking

    validates_presence_of :sixteen_digits, :exp_dates, :security_digits, :card_holder_name, :billing_address, :billing_zipcode, :billing_state, :billing_city




end
