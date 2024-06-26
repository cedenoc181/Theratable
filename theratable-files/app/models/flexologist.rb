class Flexologist < ApplicationRecord

    has_many :reviews, dependent: :destroy, inverse_of: :flexologist 
    accepts_nested_attributes_for :reviews

    has_many :schedules, dependent: :destroy, inverse_of: :flexologist
    accepts_nested_attributes_for :schedules

    has_many :bookings, through: :schedule, dependent: :destroy
    accepts_nested_attributes_for :bookings

    belongs_to :account, inverse_of: :flexologist
    accepts_nested_attributes_for :account

    belongs_to :user, inverse_of: :flexologist
    accepts_nested_attributes_for :user
      

end
