class Account < ApplicationRecord
    has_one :user, dependent: :destroy, inverse_of: :account
    accepts_nested_attributes_for :user
    
    # flexologists
    has_one :flexologist, dependent: :destroy, inverse_of: :account
    accepts_nested_attributes_for :flexologist
    
    # Clients
    has_one :client, dependent: :destroy, inverse_of: :account
    accepts_nested_attributes_for :client

    has_many :schedules, through: :flexologist, dependent: :destroy
    accepts_nested_attributes_for :schedules
    
    # bookings
    has_many :bookings, through: :clients,  dependent: :destroy
    accepts_nested_attributes_for :bookings
    
    # its already in client, make relationship simpler, payment is more important for clients record 
    # has_many :payments, through: :bookings, dependent: :destroy
    # accepts_nested_attributes_for :payments
end
