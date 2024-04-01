class Session < ApplicationRecord
    
    has_many :flexologists, through: :bookings
  
    has_many :clients, through: :bookings

    has_many :bookings, inverse_of: :session
    accepts_nested_attributes_for :bookings
    
    mount_uploader :image, SessionUploader
end
