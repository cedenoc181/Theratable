class Schedule < ApplicationRecord

    belongs_to :account, inverse_of: :schedules
    accepts_nested_attributes_for :account
     
    belongs_to :flexologist, inverse_of: :schedules
    accepts_nested_attributes_for :flexologist

    has_many :bookings, dependent: :destroy, inverse_of: :schedule
    accepts_nested_attributes_for :bookings

    validates :start_time, uniqueness: { scope: :flexologist_id, message: "You have already made this time available" }


end
