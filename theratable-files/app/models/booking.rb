class Booking < ApplicationRecord
    belongs_to :account, inverse_of: :bookings
    accepts_nested_attributes_for :account
    
    belongs_to :session, inverse_of: :bookings
    accepts_nested_attributes_for :session
    
    belongs_to :schedule, inverse_of: :bookings
    accepts_nested_attributes_for :schedule
    
    belongs_to :flexologist, inverse_of: :bookings
    accepts_nested_attributes_for :flexologist
    
    belongs_to :client, inverse_of: :bookings
    accepts_nested_attributes_for :client
    
    has_many :payments, dependent: :destroy, inverse_of: :booking
    accepts_nested_attributes_for :payments
    
    validates :schedule_id, presence: true
    
end
